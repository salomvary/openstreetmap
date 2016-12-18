# Apache HTTP Server with OpenStreetMap mod_tile

Docker image for [Apache HTTP Server](https://httpd.apache.org/) with [OpenStreetMap mod_tile](https://github.com/openstreetmap/mod_tile) pre-installed.

## Configuration

Configuration is quite limited at the moment, overwrite the default [tileserver_site.conf](https://github.com/openstreetmap/mod_tile/blob/master/debian/tileserver_site.conf) under `/etc/apache2/conf-available/` to customize.

Tiles are cached under the `/var/lib/mod_tile` volume, `renderd` is expected to listen on `renderd` hostname `7654` port (hardcoded values, sorry).
