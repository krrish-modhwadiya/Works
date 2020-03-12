Last login: Thu Jan 16 16:48:13 on ttys000
Admins-Mac-mini-3:~ krishn$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.19 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> cler;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'cler' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.01 sec)

mysql> create database KrishnaDB
    -> ;
Query OK, 1 row affected (0.00 sec)

mysql> show databses;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'databses' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| KrishnaDB          |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> use KrishnaDB
Database changed
mysql> create table The Walking Dead;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Walking Dead' at line 1
mysql> create table TWD
    -> {
    -> name varchar(15),
    -> weapon varchar(15)
    -> };
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '{
name varchar(15),
weapon varchar(15)
}' at line 2
mysql> create table TWD (id int(3),  name varchar(15), weapon varchar(15) );
Query OK, 0 rows affected, 1 warning (0.01 sec)

mysql> show tables;
+---------------------+
| Tables_in_krishnadb |
+---------------------+
| TWD                 |
+---------------------+
1 row in set (0.00 sec)

mysql> strucutre TWD;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'strucutre TWD' at line 1
mysql> structure twd;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'structure twd' at line 1
mysql> insert into TWD values (1, 'Rick', 'Axe');
Query OK, 1 row affected (0.05 sec)

mysql> insert into TWD values (2, 'Negan', 'Lucile');
Query OK, 1 row affected (0.00 sec)

mysql> select * from TWD;
+------+-------+--------+
| id   | name  | weapon |
+------+-------+--------+
|    1 | Rick  | Axe    |
|    2 | Negan | Lucile |
+------+-------+--------+
2 rows in set (0.00 sec)

mysql> select * from TWD where id = 1;
+------+------+--------+
| id   | name | weapon |
+------+------+--------+
|    1 | Rick | Axe    |
+------+------+--------+
1 row in set (0.00 sec)

mysql> delete table TWD;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table TWD' at line 1
mysql> delete table name TWD;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table name TWD' at line 1
mysql> drop table TWD;
Query OK, 0 rows affected (0.01 sec)

mysql> show tables;
Empty set (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| KrishnaDB          |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.01 sec)

mysql> 
mysql> 
mysql> clear;
mysql> clear
mysql> clear;
mysql> create table vitamin 
    -> (
    -> id int(3),
    -> name varchar(10),
    -> fav varchar(10)
    -> );
Query OK, 0 rows affected, 1 warning (0.00 sec)

mysql> show tables;
+---------------------+
| Tables_in_krishnadb |
+---------------------+
| vitamin             |
+---------------------+
1 row in set (0.00 sec)

mysql> insert into vitamin
    -> values
    -> (
    -> 1, 'The Walking Dead', 'Carl'
    -> );
ERROR 1406 (22001): Data too long for column 'name' at row 1
mysql> alter table vitamin
    -> change column 'name' varchar(50);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''name' varchar(50)' at line 2
mysql> alter table vitamin change column name varchar(50);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varchar(50)' at line 1
mysql> alter table vitamin modify column name varchar(50);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe vitamin;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(50) | YES  |     | NULL    |       |
| fav   | varchar(10) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into vitamin values
    -> (1, 'The Walking Dead', 'Carl');
Query OK, 1 row affected (0.01 sec)

mysql> insert into vitami values
    -> (2, 'Breaking Bad', 'Mike');
ERROR 1146 (42S02): Table 'krishnadb.vitami' doesn't exist
mysql> insert into vitamin values (2, 'Breaking Bad', 'Mike');
Query OK, 1 row affected (0.00 sec)

mysql> insert into vitamin values
    -> (3, 'Game of Thrones', 'Drogo');
Query OK, 1 row affected (0.00 sec)

mysql> select * from vitamin;
+------+------------------+-------+
| id   | name             | fav   |
+------+------------------+-------+
|    1 | The Walking Dead | Carl  |
|    2 | Breaking Bad     | Mike  |
|    3 | Game of Thrones  | Drogo |
+------+------------------+-------+
3 rows in set (0.00 sec)

mysql> select * from vitamin where id=1;
+------+------------------+------+
| id   | name             | fav  |
+------+------------------+------+
|    1 | The Walking Dead | Carl |
+------+------------------+------+
1 row in set (0.00 sec)

mysql> select * from vitamin ordered by fav;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'by fav' at line 1
mysql> select * from vitamin order by fav;
+------+------------------+-------+
| id   | name             | fav   |
+------+------------------+-------+
|    1 | The Walking Dead | Carl  |
|    3 | Game of Thrones  | Drogo |
|    2 | Breaking Bad     | Mike  |
+------+------------------+-------+
3 rows in set (0.00 sec)

mysql> select top 3 * from vitamin;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3 * from vitamin' at line 1
mysql> select top 2 * from vitamin;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '2 * from vitamin' at line 1
mysql> select distinct(fav) from vitamin;
+-------+
| fav   |
+-------+
| Carl  |
| Mike  |
| Drogo |
+-------+
3 rows in set (0.01 sec)

mysql> create table movies
    -> (
    -> rank int(10),
    -> mname varchar(100),
    -> fav varchar(50)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rank int(10),
mname varchar(100),
fav varchar(50)
)' at line 3
mysql> create table movies ( rank int(10), mname varchar(100), fav varchar(50) );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rank int(10), mname varchar(100), fav varchar(50) )' at line 1
mysql> create table vitamin 
    ->     -> (
    ->     -> id int(3),
    ->     -> name varchar(10),
    ->     -> fav varchar(10)
    ->     
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> (
    -> id int(3),
    -> name varchar(10),
    -> fav varchar(10)' at line 2
mysql> create table movies
    -> (
    -> rank int(3),
    -> name varchar(50),
    -> fav varchar(50)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rank int(3),
name varchar(50),
fav varchar(50)
)' at line 3
mysql> select * from vitamin;
+------+------------------+-------+
| id   | name             | fav   |
+------+------------------+-------+
|    1 | The Walking Dead | Carl  |
|    2 | Breaking Bad     | Mike  |
|    3 | Game of Thrones  | Drogo |
+------+------------------+-------+
3 rows in set (0.00 sec)

mysql> create table movies
    -> ( rank int(3), name varchar(50));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rank int(3), name varchar(50))' at line 2
mysql> create table movies (no int(3), name varchar(50));
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> describe movies;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| no    | int         | YES  |     | NULL    |       |
| name  | varchar(50) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into movies
    -> values
    -> (1, 'The Dark Knight');
Query OK, 1 row affected (0.00 sec)

mysql> insert into movies
    -> values
    -> (2, 'Joker');
Query OK, 1 row affected (0.00 sec)

mysql> select* from movies;
+------+-----------------+
| no   | name            |
+------+-----------------+
|    1 | The Dark Knight |
|    2 | Joker           |
+------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from vitamin where id = 1 or id = 2;
+------+------------------+------+
| id   | name             | fav  |
+------+------------------+------+
|    1 | The Walking Dead | Carl |
|    2 | Breaking Bad     | Mike |
+------+------------------+------+
2 rows in set (0.00 sec)

mysql> select * from vitamin where id = 1 an d id = 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'an d id = 2' at line 1
mysql> select * from vitamin where id = 1 and id = 2;
Empty set (0.00 sec)

mysql> select * from vitami as v where v.id = 1;
ERROR 1146 (42S02): Table 'krishnadb.vitami' doesn't exist
mysql> select * from vitamin as v where v.id = 1;
+------+------------------+------+
| id   | name             | fav  |
+------+------------------+------+
|    1 | The Walking Dead | Carl |
+------+------------------+------+
1 row in set (0.00 sec)

mysql> select * from vitamin as v inner join movies as m on v.id = m.id;
ERROR 1054 (42S22): Unknown column 'm.id' in 'on clause'
mysql> select * from vitamin as v inner join movies as m on v.id = m.no;
+------+------------------+------+------+-----------------+
| id   | name             | fav  | no   | name            |
+------+------------------+------+------+-----------------+
|    1 | The Walking Dead | Carl |    1 | The Dark Knight |
|    2 | Breaking Bad     | Mike |    2 | Joker           |
+------+------------------+------+------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from vitamin as v right join movies as m on v.id = m.no;
+------+------------------+------+------+-----------------+
| id   | name             | fav  | no   | name            |
+------+------------------+------+------+-----------------+
|    1 | The Walking Dead | Carl |    1 | The Dark Knight |
|    2 | Breaking Bad     | Mike |    2 | Joker           |
+------+------------------+------+------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from vitamin as v left join movies as m on v.id = m.no;
+------+------------------+-------+------+-----------------+
| id   | name             | fav   | no   | name            |
+------+------------------+-------+------+-----------------+
|    1 | The Walking Dead | Carl  |    1 | The Dark Knight |
|    2 | Breaking Bad     | Mike  |    2 | Joker           |
|    3 | Game of Thrones  | Drogo | NULL | NULL            |
+------+------------------+-------+------+-----------------+
3 rows in set (0.01 sec)

mysql> select * from vitamin as v full join movies as m on v.id = m.no;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'full join movies as m on v.id = m.no' at line 1
mysql> select * from vitamin as v full join movies as m on v.id = m.no;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'full join movies as m on v.id = m.no' at line 1
mysql> select * from vitamin as v full join movies as m on v.id = m.no;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'full join movies as m on v.id = m.no' at line 1
mysql> select * from vitamin as v full join movies as m on v.id = m.no;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'full join movies as m on v.id = m.no' at line 1
mysql> select count(*) from vitamin;
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

mysql> select count(fav) from vitamin;
+------------+
| count(fav) |
+------------+
|          3 |
+------------+
1 row in set (0.00 sec)

mysql> select count(distinct(fav)) from vitamin;
+----------------------+
| count(distinct(fav)) |
+----------------------+
|                    3 |
+----------------------+
1 row in set (0.00 sec)

mysql> create index indexline on vitamin(id);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from vitamin;
+------+------------------+-------+
| id   | name             | fav   |
+------+------------------+-------+
|    1 | The Walking Dead | Carl  |
|    2 | Breaking Bad     | Mike  |
|    3 | Game of Thrones  | Drogo |
+------+------------------+-------+
3 rows in set (0.00 sec)

mysql> 
