#!/usr/bin/env bash

set -ex

sed -i '' "s/\$PGPASSWORD/$PGPASSWORD/g" postgres-values.yaml

helm install postgres17 -n experiments --values postgres-values.yaml oci://registry-1.docker.io/bitnamicharts/postgresql
