#!/usr/bin/env bash

set -ex

# export ORS_API_KEY=

function directions_driving_car() {
  start=$1
  end=$2
  curl -v -H "Authorization: $ORS_API_KEY" \
  "https://api.openrouteservice.org/v2/directions/driving-car?start=$start&end=$end" \
  | jq > in/BY/Gomel/directions/driving-car-start-$start-end-$end.geojson
}

function directions_cycling_regular() {
  start=$1
  end=$2
  curl -v -H "Authorization: $ORS_API_KEY" \
  "https://api.openrouteservice.org/v2/directions/cycling-regular?start=$start&end=$end" \
  | jq > in/BY/Gomel/directions/cycling-regular-start-$start-end-$end.geojson
}

function export_cycling_regular() {
  bbox=$1
  curl -v -H "Authorization: $ORS_API_KEY" \
    -H 'Content-Type: application/json; charset=utf-8' \
    'https://api.openrouteservice.org/v2/export/cycling-regular/topojson' \
    -d "{"bbox":$bbox}" \
  | jq > in/BY/Gomel/export/cycling-regular-bbox-$bbox.geojson
}

function isochrones_driving_car() {
  locations=$1
  curl -v -H "Authorization: $ORS_API_KEY" \
    -H 'Content-Type: application/json; charset=utf-8' \
    'https://api.openrouteservice.org/v2/isochrones/driving-car' \
    -d '{"locations":'"$locations"',"range":[300,200],"attributes":["area","reachfactor","total_pop"],"intersections":"false","location_type":"start","range_type":"time","area_units":"m"}' \
  | jq > in/BY/Gomel/isochrones/driving-car-$locations.geojson
}

function matrix_driving_car() {
  locations=$1
  curl -v -H "Authorization: $ORS_API_KEY" \
    -H 'Content-Type: application/json; charset=utf-8' \
    'https://api.openrouteservice.org/v2/matrix/driving-car' \
    -d '{"locations":'"$locations"',"metrics":["distance","duration"],"resolve_locations":"false","units":"m"}' \
  | jq > in/BY/Gomel/matrix/driving-car-$locations.geojson
}

function snap_driving_car() {
  locations=$1
  curl -v -H "Authorization: $ORS_API_KEY" \
    -H 'Content-Type: application/json; charset=utf-8' \
    'https://api.openrouteservice.org/v2/snap/driving-car/geojson' \
    -d '{"locations":'"$locations"',"radius":1000}' \
  | jq > in/BY/Gomel/snap/driving-car-$locations.geojson
}

function pois_search_within_point() {
  coordinates=$1
  curl -v -H "Authorization: $ORS_API_KEY" \
    -H 'Content-Type: application/json; charset=utf-8' \
    'https://api.openrouteservice.org/pois' \
    -d '{"request":"pois","geometry":{"geojson":{"type":"Point","coordinates":'"$coordinates"'},"buffer":200}}' \
  | jq > in/BY/Gomel/pois/coords-$coordinates.geojson
}

function pois_inside_bounding_box() {
  bbox=$1
  curl -v -H "Authorization: $ORS_API_KEY" \
    -H 'Content-Type: application/json; charset=utf-8' \
    'https://api.openrouteservice.org/pois' \
    -d '{"request":"pois","geometry":{"bbox":'"$bbox"'}}' \
  | jq > in/BY/Gomel/pois/bbox-$bbox.geojson
}

mkdir -p in/BY/Gomel/directions
mkdir -p in/BY/Gomel/export
mkdir -p in/BY/Gomel/isochrones
mkdir -p in/BY/Gomel/matrix
mkdir -p in/BY/Gomel/snap
mkdir -p in/BY/Gomel/pois

# directions_driving_car '30.953947305679325,52.425977420169914' '30.92113316059113,52.40530219961664'
# directions_cycling_regular '30.953947305679325,52.425977420169914' '30.92113316059113,52.40530219961664'
# export_cycling_regular '[30.954133,52.426097,30.954133,52.426097]'
# isochrones_driving_car '[[30.954133,52.426097],[30.954133,52.426097]]'
# matrix_driving_car '[[30.954133,52.426097],[30.954133,52.426097]]'
# snap_driving_car '[[30.954133,52.426097],[30.954133,52.426097]]'
pois_search_within_point '[30.923631,52.409581,30.99701]'
pois_inside_bounding_box '[30.943027,52.430868]'
