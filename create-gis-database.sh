#!/bin/sh

set -euf

createdb --encoding=UTF8 gis
psql --dbname=gis -c "CREATE EXTENSION postgis;"
psql --dbname=gis -c "CREATE EXTENSION postgis_topology;"
