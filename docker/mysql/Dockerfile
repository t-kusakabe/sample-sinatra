FROM mysql:8.0

ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes

COPY ./docker/mysql/init/init.sql /docker-entrypoint-initdb.d/init.sql
