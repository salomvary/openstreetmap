# OpenStreetMap on Docker

This is a work-in-progress experiment to run OpenStreetMap on Docker.

## Usage

```
docker-compose up
docker run --link=-it --link openstreetmap_database_1:database salomvary/openstreetmap_importer
./create-gis-database.sh
./import-osm.sh http://download.geofabrik.de/europe/liechtenstein-latest.osm.pbf
open http://`docker-machine ip default`:8080/osm/slippymap.html
```

## Related

- [Building a tile server from packages (SWITCH2OSM)](https://switch2osm.org/serving-tiles/building-a-tile-server-from-packages/)
- [OpenStreetMap packages for Ubuntu](https://launchpad.net/~kakrueger/+archive/ubuntu/openstreetmap)
- [OpenStreetMap packages for Ubuntu (sources)](https://github.com/apmon/OSM-rendering-stack-deplou)
- [mod_tile and renderd source](https://github.com/openstreetmap/mod_tile)
- [OpenStreetMap CartoCSS style](https://github.com/gravitystorm/openstreetmap-carto)
- [Download OpenStreetMap regions](http://download.geofabrik.de/index.html)
