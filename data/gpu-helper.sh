#!/usr/bin/env bash

set -ex

awk -F, 'NR>1 {print $1}' gpu-images.csv | xargs -I {} sh -c 'curl -O "{}"'
