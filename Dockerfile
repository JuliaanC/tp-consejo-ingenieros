FROM php:7.1-apache

LABEL author=francipvb
LABEL email=francipvb@hotmail.com

# Primero que nada agregamos el dominio predeterminado:
COPY . /var/www/html/
COPY default-site.conf /etc/apache2/sites-available/000-default.conf

