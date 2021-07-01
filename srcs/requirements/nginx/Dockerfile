FROM	debian:buster

# Update apt
RUN	apt update
RUN	apt -y upgrade

# Installation NGIX & CERTS
RUN	apt install -y nginx
RUN	apt install -y ssl-cert

# Configuration files
RUN	mv /etc/nginx/nginx.conf /etc/nginx/nginx_backup.conf
RUN	rm /etc/nginx/sites-available/default
RUN	rm /etc/nginx/sites-enabled/default
RUN	mv /var/www/html/index.nginx-debian.html /var/www/html/index.html

COPY	./conf/nginx.conf /etc/nginx/nginx.conf
COPY	./tools/default /etc/nginx/sites-available/default
RUN	ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

# By default HTTPS
EXPOSE	443

ENTRYPOINT	["nginx", "-g", "daemon off;"]
