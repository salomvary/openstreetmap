FROM ubuntu:trusty

# Add openstreetmap apt-sources
RUN apt-get install -y --no-install-recommends software-properties-common \
	&& add-apt-repository ppa:kakrueger/openstreetmap \
	&& apt-get update

# Install apache2 httpd with and mod_tile
# TODO install *without* renderd
RUN apt-get install -y --no-install-recommends libapache2-mod-tile

ENV APACHE_RUN_USER     www-data
ENV APACHE_RUN_GROUP    www-data
ENV APACHE_LOG_DIR      /var/log/apache2
ENV APACHE_PID_FILE     /var/run/apache2.pid
ENV APACHE_RUN_DIR      /var/run/apache2
ENV APACHE_LOCK_DIR     /var/lock

RUN sed -ri ' \
		s!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g; \
		s!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g; \
		' /etc/apache2/apache2.conf \
		/etc/apache2/conf-available/other-vhosts-access-log.conf \
		/etc/apache2/sites-available/default-ssl.conf \
		/etc/apache2/sites-available/000-default.conf

RUN sed -ri ' \
		s!^(\s*ModTileRenderdSocketName)!#\1!g; \
		s!^#(\s*ModTileRenderdSocketAddr).*! \1 renderd 7654!g; \
		' /etc/apache2/sites-available/tileserver_site.conf

COPY renderd.conf /etc/renderd.conf
COPY httpd-foreground ./

VOLUME /var/lib/mod_tile

EXPOSE 80

ENTRYPOINT ["./httpd-foreground"]
