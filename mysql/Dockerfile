FROM mysql:5.7
COPY custom.cnf /etc/mysql/conf.d/custom.cnf
COPY ./database/ /docker-entrypoint-initdb.d/
