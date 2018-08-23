#!/usr/bin/env bash

echo "# Helm Dependency tests"

helm dep up parent

echo "## BATTERY 1 - no values file"
helm template parent

echo "## BATTERY 2 - all_global.yaml values file"
helm template parent -f all_global.yaml

echo "## BATTERY 3 - all_local.yaml values file"
helm template parent -f all_local.yaml

echo "## BATTERY 4 - all_local_child.yaml values file"
helm template parent -f all_local_child.yaml
