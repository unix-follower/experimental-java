#!/usr/bin/env bash

set -ex

build() {
    rm -rf build/classes/
    javac -d build/classes --class-path ../chemistry/build/dist/chemistry-api.jar $(ls *.java | grep -v "module-info.java")
    jar --create --file build/dist/class_loader-app.jar -C build/classes .
}

build_module() {
    rm -rf build/classes/
    javac -d build/classes --module-path ../chemistry/build/dist/chemistry-api.jar *.java
    jar --create --file build/dist/class_loader-app.jar -C build/classes .
}

run_printClassLoaders() {
    java --class-path build/classes class_loader_app.ClassLoaderDemo
}

run_printParents() {
    java --class-path build/classes class_loader_app.ClassLoaderDemo --parents
}

run_loadClass() {
    java -cp ../chemistry/build/dist/chemistry-api.jar:build/dist/class_loader-app.jar \
      -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 \
      class_loader_app.ClassLoaderDemo --load chemistry.StateOfMatter
}

run_modular_loadClass() {
    java --show-module-resolution \
      --module-path build/dist/class_loader-app.jar:../chemistry/build/dist/chemistry-api.jar \
      --module class_loader.app/class_loader_app.ClassLoaderDemo --load chemistry.StateOfMatter
}

run_modular_loadClass_with_automatic_module_name() {
    ../chemistry/helper.sh build ../chemistry ../chemistry/build
    rm -rf build/classes/
    javac -d build/classes \
      --module-path ../chemistry/build/dist/chemistry-api.jar \
      --add-reads class_loader.app=chemistry.api *.java
    jar --create --file build/dist/class_loader-app.jar -C build/classes .

    java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 \
      --module-path ../chemistry/build/dist/chemistry-api.jar:build/dist/class_loader-app.jar \
      --module class_loader.app/class_loader_app.ClassLoaderDemo --load chemistry.StateOfMatter
}

executeScenarioWithChemistryModule() {
    java --module-path build/dist/class_loader-app.jar:../chemistry/build/dist/chemistry-api.jar \
        --module class_loader.app/class_loader_app.ClassLoaderDemo -n 1
}

case "$1" in
    build)
        build
        ;;
    build_module)
        build_module
        ;;
    run_printClassLoaders)
        run_printClassLoaders
        ;;
    run_printParents)
        run_printParents
        ;;
    run_loadClass)
        run_loadClass
        ;;
    run_modular_loadClass)
        run_modular_loadClass
        ;;
    run_modular_loadClass_with_automatic_module_name)
        run_modular_loadClass_with_automatic_module_name
        ;;
    executeScenarioWithChemistryModule)
        executeScenarioWithChemistryModule
        ;;
    *)
        echo "Usage: $0 {function name}"
        exit 1
        ;;
esac
