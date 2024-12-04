Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sajin              |
| sajinak            |
| world              |
+--------------------+
6 rows in set (0.01 sec)

mysql> use sajinak;
Database changed
mysql> show tables;
+-------------------+
| Tables_in_sajinak |
+-------------------+
| student           |
+-------------------+
1 row in set (0.01 sec)

mysql> selct*from student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selct*from student' at line 1
mysql> select*from student;
+-----------+-------+-----------------------+----------+
| name      | regno | email                 | password |
+-----------+-------+-----------------------+----------+
| sajin a.k | 111   | sajinak2003@gmail.com | 12345    |
| nijas a.k | 112   | nijas@23gmail.com     | 12212    |
| aaron     | 122   | aaron2@gmail.com      | 13332    |
| lijin     | 123   | lijin*@gmail.com      | 14444    |
+-----------+-------+-----------------------+----------+
4 rows in set (0.01 sec)

mysql> select name and regno from student where password = 1 to 100000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to 100000' at line 1
mysql> select name and regno from student where password = 1 or 100000;
+----------------+
| name and regno |
+----------------+
|              0 |
|              0 |
|              0 |
|              0 |
+----------------+
4 rows in set, 4 warnings (0.00 sec)

mysql> select name and regno from student where password = 12345;
+----------------+
| name and regno |
+----------------+
|              0 |
+----------------+
1 row in set, 1 warning (0.00 sec)

mysql> select name and regno from student where password = 12345;
+----------------+
| name and regno |
+----------------+
|              0 |
+----------------+
1 row in set, 1 warning (0.00 sec)

mysql> select name from student where regno =111;
+-----------+
| name      |
+-----------+
| sajin a.k |
+-----------+
1 row in set (0.00 sec)

mysql> select name and email from student where regno =111;
+----------------+
| name and email |
+----------------+
|              0 |
+----------------+
1 row in set, 1 warning (0.00 sec)

mysql> select name,email from student where regno =111;
+-----------+-----------------------+
| name      | email                 |
+-----------+-----------------------+
| sajin a.k | sajinak2003@gmail.com |
+-----------+-----------------------+
1 row in set (0.00 sec)

mysql>