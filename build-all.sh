#!/bin/sh

set -eufx

all="database httpd importer renderd"

for service in $all; do
	docker build -t "salomvary/openstreetmap_$service" -f "Dockerfile.$service" .
done
