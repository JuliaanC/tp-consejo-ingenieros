FROM php:7.1-apache

LABEL author=francipvb
LABEL email=francipvb@hotmail.com

# Primero que nada agregamos el dominio predeterminado:
COPY . /var/www/html/
