#!/bin/sh

mkdir /etc/nginx/ssl

#Para crear el certificado ssl y configurar wordpress automaticamente
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -out $CERTIFICATE -keyout $CERT_KEY -subj "/C=SP/ST=Andalucia/L=Malaga/O=42/OU=42/CN=$DOMINIO_NAME/UID=$LOGIN"

#sed -i "s/dominio_name/$DOMINIO_NAME/" /etc/nginx/nginx.conf
#sed -i "s#certificate#$CERTIFICATE#g" /etc/nginx/nginx.conf
#sed -i "s#cert_key#$CERT_KEY#g" /etc/nginx/nginx.conf

nginx -g "daemon off;"