#!/bin/sh

set -eufx

all="database httpd importer renderd"

for service in $all; do
	docker push "salomvary/openstreetmap-$service"
done
