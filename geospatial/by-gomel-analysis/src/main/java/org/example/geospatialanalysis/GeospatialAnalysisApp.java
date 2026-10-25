package org.example.geospatialanalysis;

import org.jgrapht.alg.shortestpath.DijkstraShortestPath;
import org.jgrapht.graph.AbstractBaseGraph;
import tools.jackson.databind.JsonNode;
import tools.jackson.databind.ObjectMapper;
import org.jgrapht.GraphPath;
import org.jgrapht.graph.DefaultDirectedWeightedGraph;
import org.jgrapht.graph.DefaultWeightedEdge;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.file.Path;
import java.util.Objects;

import org.jgrapht.nio.Attribute;
import org.jgrapht.nio.DefaultAttribute;
import org.jgrapht.nio.dot.DOTExporter;

import java.io.BufferedWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.HashMap;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class GeospatialAnalysisApp {
    private static final Logger LOGGER = LoggerFactory.getLogger(GeospatialAnalysisApp.class.getName());

    private static final int EARTH_AVG_RADIUS_METERS = 6_371_000;
    private static final String INPUT_FILE_PATH = "in/geospatial/BY/Gomel/directions/" +
            "driving-car-start-30.953947305679325,52.425977420169914-end-30.92113316059113,52.40530219961664.geojson";

    private GeospatialAnalysisApp() {
    }

    /**
     * Edge carries the step metadata.
     * $.features[?(@.type == 'Feature')].properties.segments[*].steps[*]
     */
    private static class RoadEdge extends DefaultWeightedEdge {
        int stepIndex;
        String instruction;
        String streetName;
    }

    private record GeoPoint(double lonDegrees, double latDegrees) {
    }

    private static double haversineDistanceMeters(GeoPoint from, GeoPoint to) {
        final double fromLatRad = Math.toRadians(from.latDegrees());
        final double toLatRad = Math.toRadians(to.latDegrees());
        final double deltaLatRad = Math.toRadians(to.latDegrees() - from.latDegrees());
        final double deltaLonRad = Math.toRadians(to.lonDegrees() - from.lonDegrees());
        final double sinHalfDeltaLat = Math.sin(deltaLatRad / 2);
        final double sinHalfDeltaLon = Math.sin(deltaLonRad / 2);

        // haversine of the central angle between the two points
        final double haversineOfCentralAngle =
                sinHalfDeltaLat * sinHalfDeltaLat
                        + Math.cos(fromLatRad) * Math.cos(toLatRad) * sinHalfDeltaLon * sinHalfDeltaLon;

        final double centralAngleRad = 2 * Math.asin(Math.sqrt(haversineOfCentralAngle));

        return EARTH_AVG_RADIUS_METERS * centralAngleRad;
    }

    private static void addVertices(AbstractBaseGraph<Integer, RoadEdge> directedWeightedGraph, JsonNode coords) {
        // one per coordinate
        for (int i = 0; i < coords.size(); i++) {
            directedWeightedGraph.addVertex(i);
        }
    }

    private static JsonNode getCoordinates(JsonNode feature) {
        return feature.get("geometry").get("coordinates");
    }

    private static void addEdges(AbstractBaseGraph<Integer, RoadEdge> directedWeightedGraph, JsonNode feature) {
        final JsonNode coords = getCoordinates(feature);
        final JsonNode steps = feature.get("properties").get("segments").get(0).get("steps");

        // edges: consecutive coordinates, tagged with the step they belong to
        for (int i = 0; i < steps.size(); i++) {
            final JsonNode step = steps.get(i);
            final int from = step.get("way_points").get(0).asInt();
            final int to = step.get("way_points").get(1).asInt();

            for (int j = from; j < to; j++) { // j < to, so the shared boundary vertex isn't duplicated
                final RoadEdge edge = directedWeightedGraph.addEdge(j, j + 1);
                final var fromPoint = new GeoPoint( // NOPMD
                        coords.get(j).get(0).asDouble(), coords.get(j).get(1).asDouble());
                final var toPoint = new GeoPoint( // NOPMD
                        coords.get(j + 1).get(0).asDouble(), coords.get(j + 1).get(1).asDouble());
                final double weight = haversineDistanceMeters(fromPoint, toPoint);
                directedWeightedGraph.setEdgeWeight(edge, weight);
                edge.stepIndex = i;
                edge.instruction = step.get("instruction").asString();
                edge.streetName = step.get("name").asString();
            }
        }
    }

    private static void exportDot(AbstractBaseGraph<Integer, RoadEdge> directedWeightedGraph, JsonNode coords) {
        // bounding box, used to place vertices at their real geographic position
        double minLon = Double.MAX_VALUE;
        double minLat = Double.MAX_VALUE;
        for (JsonNode c : coords) {
            minLon = Math.min(minLon, c.get(0).asDouble());
            minLat = Math.min(minLat, c.get(1).asDouble());
        }
        final double fMinLon = minLon;
        final double fMinLat = minLat;
        final double scale = 100_000; // degrees -> Graphviz points

        final var exporter = new DOTExporter<Integer, RoadEdge>(v -> "n" + v); // vertex id

        // vertex attributes
        exporter.setVertexAttributeProvider(v -> {
            final var map = HashMap.<String, Attribute>newHashMap(3);
            final double lon = coords.get(v).get(0).asDouble();
            final double lat = coords.get(v).get(1).asDouble();
            map.put("label", DefaultAttribute.createAttribute(String.valueOf(v)));
            map.put("pos", DefaultAttribute.createAttribute(String.format(Locale.ROOT, "%.1f,%.1f!",
                    (lon - fMinLon) * scale, (lat - fMinLat) * scale)));
            map.put("shape", DefaultAttribute.createAttribute("point"));
            return map;
        });

        // edge attributes
        exporter.setEdgeAttributeProvider(e -> {
            final var map = HashMap.<String, Attribute>newHashMap(3);
            map.put("label", DefaultAttribute.createAttribute(
                    String.format(Locale.ROOT, "%s (%.0f m)", e.streetName, directedWeightedGraph.getEdgeWeight(e))));
            map.put("step", DefaultAttribute.createAttribute(e.stepIndex));
            map.put("instruction", DefaultAttribute.createAttribute(e.instruction));
            return map;
        });

        // graph-level attributes
        exporter.setGraphAttributeProvider(() -> {
            final var map = HashMap.<String, Attribute>newHashMap(1);
            map.put("rankdir", DefaultAttribute.createAttribute("LR"));
            return map;
        });

        final var outPath = Path.of(
                        Objects.requireNonNullElse(System.getenv("OUTPUT_DIR"), "."))
                .resolve("geospatial/by-gomel-analysis/");
        try (BufferedWriter writer = Files.newBufferedWriter(
                Files.createDirectories(outPath).resolve("route.dot"), StandardCharsets.UTF_8)) {
            exporter.exportGraph(directedWeightedGraph, writer);
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    static void main() {
        final var dataDir = System.getenv("DATA_DIR");
        Objects.requireNonNull(dataDir, "Data directory has to be specified");

        final JsonNode feature = new ObjectMapper()
                .readTree(Path.of(dataDir, INPUT_FILE_PATH).toFile())
                .get("features").get(0);

        final JsonNode coords = getCoordinates(feature);

        final var directedWeightedGraph = new DefaultDirectedWeightedGraph<Integer, RoadEdge>(RoadEdge.class);
        addVertices(directedWeightedGraph, coords);
        addEdges(directedWeightedGraph, feature);

        // sanity check: should be ≈ 4070.9 m (the file's summary.distance)
        final double total = directedWeightedGraph.edgeSet().stream()
                .mapToDouble(directedWeightedGraph::getEdgeWeight).sum();
        LOGGER.info(String.format("Total length: %.1f m%n", total));

        // path between two vertices, e.g. start (0) to end (62)
        final GraphPath<Integer, RoadEdge> path =
                new DijkstraShortestPath<>(directedWeightedGraph).getPath(0, coords.size() - 1);
        LOGGER.info(String.format("Path weight: %.1f m, %d edges%n", path.getWeight(), path.getLength()));

        // which street each edge is on
        path.getEdgeList().stream()
                .map(e -> e.streetName).distinct().forEach(System.out::println);

        exportDot(directedWeightedGraph, coords);
    }
}
