# Experimental Java

## The Monitoring Tools commands cheat-sheet
```bash
jps -lv
jstat -gcutil 45094 250 7
jstat -gcnew -h3 45094 250
jconsole 45094
jcmd 45094
jcmd 45094 GC.heap_info
# For localhost only - address=5005; for remote - address=*:5005
jdb -attach 5005
jmap -dump:live,format=b,file=heap.bin 49255
jinfo -sysprops 49255
jstack -l 49255
```

## Commands cheat-sheet for class_loader_app

### Build chemistry.api
#### as a module
```bash
rm -r build/chemistry_bin/
javac -d build/chemistry_bin chemistry/*.java
jar --create --file build/dist/chemistry-api.jar -C build/chemistry_bin .
unzip -d tmp build/chemistry_bin/chemistry-api.jar
```
#### not a module
```bash
rm -r build/chemistry_bin/
javac -d build/chemistry_bin $(ls chemistry/*.java | grep -v "module-info.java")
jar --create --file build/dist/chemistry-api.jar -C build/chemistry_bin .
unzip -d tmp build/chemistry_bin/chemistry-api.jar
```
### Run the app
#### Show class loaders of some classes
```bash
javac class_loader_app/ClassLoaderDemo.java
java class_loader_app.ClassLoaderDemo
```
#### Show parent class loaders of some classes
```bash
java class_loader_app.ClassLoaderDemo --parents
```
#### Run loadClass function
```bash
java -cp build/dist/chemistry-api.jar:build/dist/class_loader-app.jar \
  -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 \
  class_loader_app.ClassLoaderDemo --load chemistry.StateOfMatter
```
### Run the app with modules
#### Build class_loader.app module
```bash
rm -r build/class_loader_app_bin/
javac -d build/class_loader_app_bin --module-path build/dist/chemistry-api.jar class_loader_app/*.java
jar --create --file build/dist/class_loader-app.jar -C build/class_loader_app_bin .
```
#### Run loadClass function
```bash
java --show-module-resolution \
  --module-path build/dist/class_loader-app.jar:build/dist/chemistry-api.jar \
  --module class_loader.app/class_loader_app.ClassLoaderDemo --load chemistry.StateOfMatter
```
Run with Automatic-Module-Name set
```bash
rm -r build/class_loader_app_bin/
mkdir -p build/class_loader_app_bin/src/class_loader_app
cp -r class_loader_app build/class_loader_app_bin/src/
javac -d build/class_loader_app_bin \
  --module-path build/dist/chemistry-api.jar \
  --add-reads class_loader.app=chemistry.api \
  build/class_loader_app_bin/src/class_loader_app/*.java
rm -r build/class_loader_app_bin/src/
jar --create --file build/dist/class_loader-app.jar -C build/class_loader_app_bin .

java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 \
  --module-path build/dist/chemistry-api.jar:build/dist/class_loader-app.jar \
  --module class_loader.app/class_loader_app.ClassLoaderDemo --load chemistry.StateOfMatter
```
#### Run executeScenarioWithChemistryModule
```bash
java --module-path build/dist/class_loader-app.jar:build/dist/chemistry-api.jar \
  --module class_loader.app/class_loader_app.ClassLoaderDemo -n 1
```
