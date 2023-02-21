FROM postgres:15.1

COPY initdb.sql /docker-entrypoint-initdb.d/
