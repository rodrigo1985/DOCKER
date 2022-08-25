FROM debian:10.12-slim

WORKDIR /home

EXPOSE 80

RUN apt update;apt install apache2 -y; echo "ServerName 127.0.0.1" >> /etc/apache2/apache2.conf

COPY ./index.php /var/www/html/

#CMD ["/etc/init.d/apache2","start"]