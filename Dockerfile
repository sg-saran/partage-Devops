FROM ubuntu:latest

RUN apt-get update && apt-get install -y apache2 net-tools iproute2 iputils-ping nano ssh \
    && apt-get clean

COPY . /var/www/html/

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
