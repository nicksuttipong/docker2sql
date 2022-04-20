FROM mysql/mysql-server:latest

COPY ./.docker/custom.cnf /etc/mysql/conf.d/custom.cnf

COPY ./.docker/db/initial_db.sql /docker-entrypoint-initdb.d