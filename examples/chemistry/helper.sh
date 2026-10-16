#!/usr/bin/env bash

set -ex

build() {
    local src_dir=${1:-.}
    local build_dir="${2:-build}"

    echo "Source dir: $src_dir"
    echo "Build dir: $build_dir"
    local classes_dir="$build_dir/classes/"
    echo "Classes_dir dir: $classes_dir"

    rm -rf "$build_dir"
    javac -d $classes_dir $(ls $src_dir/*.java | grep -v "module-info.java")
    jar --create --file "$build_dir/dist/chemistry-api.jar" --manifest $src_dir/MANIFEST.MF -C $classes_dir .
}

build_module() {
    rm -rf build/classes/
    javac -d build/classes *.java

    jar --create --file build/dist/chemistry-api.jar -C build/classes .
}

case "$1" in
    build)
        build $2 $3
        ;;
    build_module)
        build_module
        ;;
    *)
        echo "Usage: $0 {build|build_module}"
        exit 1
        ;;
esac
