FROM debian:bullseye

#Actualiza y descarga mariadb
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y mariadb-server
RUN mkdir -p /run/mysqld

#Expone el puerto por defecto de mariadb
EXPOSE 3306

#Copia el script y la configuracion al directorio raiz
COPY ./tools/mariadb.sh ./mariadb.sh
COPY ./conf/mariadb.cnf ./mariadb.cnf

#Usuario y Seguridad: user
#Gestión de Procesos: pid-file
#Conectividad de Red: port, bind-address, socket
#Ubicaciones del Sistema de Archivos: basedir, datadir, tmpdir


#Le da permisos al script para poder ejecutarse
RUN chmod +x mariadb.sh

CMD ["sh", "mariadb.sh"]
