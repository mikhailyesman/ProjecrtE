docker-compose up
 mysql -u root -h localhost -P 3307 -p
/etc/mysql/my.cnf
docker exec -u root -t -i 60410df87a5f /bin/bash
service mysql restart
mysql -u smes -p -h 192.168.10.66 -P 3307

