FROM postgres:latest
ARG MESSAGE_DB_VERSION=1.2.2

WORKDIR /usr/src
ADD https://github.com/message-db/message-db/archive/v${MESSAGE_DB_VERSION}.tar.gz message-db.tar.gz
RUN tar -xzf message-db.tar.gz
RUN mv message-db-${MESSAGE_DB_VERSION} message-db

WORKDIR /
COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
