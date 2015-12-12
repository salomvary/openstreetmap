FROM ubuntu:trusty

# Add openstreetmap apt-sources
RUN apt-get install -y --no-install-recommends software-properties-common \
	&& add-apt-repository ppa:kakrueger/openstreetmap \
	&& apt-get update

# Install osm2pgsql, wget and psql cli
RUN apt-get install -y --no-install-recommends osm2pgsql wget postgresql-client

ENV PGHOST database
ENV PGUSER postgres

ADD create-gis-database.sh import-osm.sh ./
