package org.example.experiments.db.pubchem.graph.model;

public record CompoundDataProjection(
    long totalCompounds,
    long totalElements,
    long totalEdges,
    String compound,
    String element,
    String relationship
) {
}
