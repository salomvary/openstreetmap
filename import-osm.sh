#!/bin/sh

set -euf

osm_pbf_url=$1

wget -q -O - "$osm_pbf_url" |
	osm2pgsql --slim -C 1500 --number-processes 4 --input-reader pbf /dev/stdin
