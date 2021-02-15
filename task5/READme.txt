docker-compose up
 mysql -u root -h localhost -P 3307 -p
/etc/mysql/my.cnf
docker exec -u root -t -i 60410df87a5f /bin/bash
service mysql restart
mysql -u smes -p -h 192.168.10.66 -P 3307

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
GRANT REPLICATION SLAVE ON . TO 'smes_rep'@'%' IDENTIFIED BY 'smes'; FLUSH PRIVILEGES;
FLUSH PRIVILEGES;
**********************************************************************************************************************
RESET MASTER;
CHANGE MASTER TO MASTER_HOST='192.168.10.55', MASTER_PORT=3307, MASTER_USER='smesrep', MASTER_PASSWORD='smes'; SHOW SLAVE STATUS\G;
STOP SLAVE;
START SLAVE;




