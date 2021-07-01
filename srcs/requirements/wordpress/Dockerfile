FROM		debian:buster

# Update apt packages
RUN		apt update
RUN		apt -y upgrade

# Install php-fpm and wordpres
RUN		apt install -y php7.3-fpm
RUN		apt install -y wordpress
RUN		mkdir /run/php/
COPY		./conf/www.conf /etc/php/7.3/fpm/pool.d/

# Expose port to connect with Nginx
EXPOSE		9000

# Start daemon in background
ENTRYPOINT	["php-fpm7.3", "--nodaemonize"]
