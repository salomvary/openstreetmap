# OpenStreetMap renderd

Docker image for [OpenStreetMap mod_tile](https://github.com/openstreetmap/mod_tile) renderd component. Installed from the [Ubuntu PPA packages by Kai Krueger](https://launchpad.net/~kakrueger/+archive/ubuntu/openstreetmap).

## Configuration

`PGHOST` and `PGUSER` configure the access to the PostgreSQL database. Tiles are cached under the `/var/lib/mod_tile` volume, Mapnik styles are expected to be `/etc/mapnik-osm-carto-data/osm.xml`. Renderd will listen on TCP port 7654.

Override the default [/etc/renderd.conf](renderd.conf) for more customization.


