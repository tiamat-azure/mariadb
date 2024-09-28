#!/bin/bash
set -e

# Démarrer MariaDB
/usr/local/bin/docker-entrypoint.sh mariadbd &

# Attendre que MariaDB démarre
until mysqladmin ping -h "127.0.0.1" --silent; do
    echo "Waiting for MariaDB to be ready..."
    sleep 2
done

# Exécuter le script SQL
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "source /docker-entrypoint-initdb.d/init.sql"

# Garder le processus MariaDB en cours d'exécution
wait
