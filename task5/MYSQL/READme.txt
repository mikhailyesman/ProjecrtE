docker-compose up
 mysql -u root -h localhost -P 3307 -p
/etc/mysql/my.cnf
docker exec -u root -t -i 60410df87a5f /bin/bash
service mysql restart
mysql -u smes -p -h 192.168.10.66 -P 3307

docker logs -f <name>



**********************************************************************************************************************
MYSQL:
**********************************************************************************************************************
SHOW TABLES;
SHOW MASTER STATUS;
DROP TABLE Result;
SHOW DATABASES;
SHOW SLAVE STATUS\G;
SELECT MEMBER_ID, MEMBER_HOST, MEMBER_STATE FROM performance_schema.replication_group_members;
START GROUP_REPLICATION;


**********************************************************************************************************************
GRANT REPLICATION SLAVE ON . TO 'smesrep'@'%' IDENTIFIED BY 'smes'; FLUSH PRIVILEGES;
FLUSH PRIVILEGES;
**********************************************************************************************************************
RESET MASTER;
CHANGE MASTER TO MASTER_HOST='192.168.10.55', MASTER_PORT=3307, MASTER_USER='smesrep', MASTER_PASSWORD='smes'; SHOW SLAVE STATUS\G;
STOP SLAVE;
START SLAVE;

https://ruhighload.com/%D0%9A%D0%B0%D0%BA+%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B8%D1%82%D1%8C+mysql+master-slave+%D1%80%D0%B5%D0%BF%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8E%3F

https://www.2ndquadrant.com/en/blog/using-docker-hub-postgresql-images/
https://www.vultr.com/docs/configure-mysql-group-replication-on-ubuntu-20-04

http://www.mysql.ru/docs/man/Getting_information.html

https://habr.com/ru/post/56702/



