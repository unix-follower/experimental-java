# Geospatial Analysis
## Setup
```bash
brew install graphviz
# Execute at repo root location
export DATA_DIR="$(pwd)/data/"
export OUTPUT_DIR="${DATA_DIR}geospatial/out/"
mkdir -p $OUTPUT_DIR
```
## Commands cheat-sheet
```bash
./gradlew -p geospatial/by-gomel-analysis dependencies --configuration runtimeClasspath
./gradlew -p geospatial/by-gomel-analysis clean build copyDependencies
ls ~/.gradle/caches/modules-2/files-2.1/
```
## GeospatialAnalysisApp
```bash
cd geospatial/by-gomel-analysis/build/libs/
java --module-path lib:by-gomel-analysis-1.0.0.jar \
  --module by.gomel.analysis.app/org.example.geospatialanalysis.GeospatialAnalysisApp

neato -n -Tsvg ${OUTPUT_DIR}geospatial/by-gomel-analysis/route.dot -o ${OUTPUT_DIR}geospatial/by-gomel-analysis/route.svg
dot -Tsvg ${OUTPUT_DIR}geospatial/by-gomel-analysis/route.dot -o ${OUTPUT_DIR}geospatial/by-gomel-analysis/compact-route.svg
```
