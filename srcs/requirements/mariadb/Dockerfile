FROM		debian:10.8

RUN		apt update
RUN		apt -y upgrade

RUN		apt install -y mariadb-server
COPY		./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY		./tools/database.sh /database/
RUN		chmod 770 /database/database.sh
RUN		/etc/init.d/mysql start && \
		/database/database.sh

EXPOSE		3306

ENTRYPOINT	["mysqld"]
