# POC MariaDB + PHPMyAdmin + Replica

![mariadb-logo](<images/mariadb-logo.png>)

## 🛠️ Comment utiliser ce projet ?

Lancer le GitHub CodeSpace associé à ce projet, puis exécuter les commandes suivantes :

```bash
docker-compose up -d
```

Pour arrêter les services :

```bash
docker-compose down
```

Pour se connecter au container MariaDB :

```bashs
# Se connecter au container MariaDB
docker exec -it mariadb bash

# Lister les processus
ps -ef

UID          PID    PPID  C STIME TTY          TIME CMD
mysql          1       0  0 00:25 ?        00:00:01 mariadbd
root          68       0  0 00:27 pts/0    00:00:00 bash
root          76      68  0 00:28 pts/0    00:00:00 ps -ef
```
