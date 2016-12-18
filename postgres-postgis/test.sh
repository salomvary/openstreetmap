#!/bin/sh

set -eufx

# createdb might fail when retrying
createdb --encoding=UTF8 gis || true
psql --dbname=gis -c 'CREATE EXTENSION postgis;'
psql --dbname=gis -c 'CREATE EXTENSION postgis_topology;'

