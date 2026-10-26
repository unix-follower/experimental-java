# Experiments Java

## Commands cheat-sheet
```bash
./gradlew dependencies --configuration runtimeClasspath
./gradlew copyDependencies
./gradlew clean build
ls ~/.gradle/caches/modules-2/files-2.1/
```
### Decompile
```bash
javap -p -v build/classes/java/main/org/example/experiments/multithreading/ratelimiter/RateLimiterWithThreadInterruptApp.class \
  > build/tmp/RateLimiterWithThreadInterruptApp.class.txt
```
### Diagnostic command requests
```bash
jps
jcmd 83087 GC.heap_info
jcmd 83087 GC.class_histogram
```

## ExperimentsMultithreadingApp
### Prerequisites:
```bash
export OTEL_EXPORTER_OTLP_ENDPOINT="http://localhost:4317"
```

## RateLimiterWithThreadInterruptApp
```bash
java --module-path build/libs/lib:build/libs/experiments-java-1.0.0.jar \
  --module experiments.java/org.example.experiments.multithreading.ratelimiter.RateLimiterWithThreadInterruptApp
```
## DaemonThreadApp
```bash
java --module-path build/libs/lib:build/libs/experiments-java-1.0.0.jar \
  --module experiments.java/org.example.experiments.multithreading.DaemonThreadApp
```
## ActiveObjectApp
```bash
java --module-path build/libs/lib:build/libs/experiments-java-1.0.0.jar \
  --module experiments.java/org.example.experiments.multithreading.activeobject.ActiveObjectApp -s sync-on-this
```
