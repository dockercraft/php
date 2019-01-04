FROM alpine:3.8
MAINTAINER Dockercraft <daniel@topdevbox.com>

LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="PHP" \
    org.label-schema.description="alpine3.8, perl-5.26.3-r0, php7-7.2.13-r0" \
    org.label-schema.url="https://github.com/dockercraft/php" \
    org.label-schema.vendor="Dockercraft (daniel@topdevbox.com)" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20190104"

RUN apk add --update bash perl bc \
		ca-certificates \
		php7-cli \
		php7-fpm \
		php7-common \
		php7-curl \
		php7-gd \
		php7-mysqlnd \
		php7-imap \
		php7-pdo_mysql \
		php7-xml \
		php7-mcrypt \
		php7-mbstring \
		php7-bcmath \
		php7-json \
		php7-phar \
		php7-fileinfo \
		php7-dom \
		php7-simplexml \
		php7-sqlite3 \
		php7-tokenizer \
		php7-xmlwriter \
		php7-iconv \
		php7-redis \
		php7-xdebug \
		php7-session && \ 
		rm -rf /var/cache/apk/*