# Database

We can create a new database in MySQL by using the CREATE DATABASE statement with the below syntax:

Table of Contents

- [Database](#database)
  - [Create Database](#create-database)
  - [SELECT Database](#select-database)
  - [SHOW Database](#show-database)
  - [DROP Database](#drop-database)
  - [COPY Database](#copy-database)

## Create Database

ฐานข้อมูล ใช้เพื่อจัดเก็บคอลเลกชันของระเบียนในรูปแบบที่เป็นระเบียบ ช่วยให้เราสามารถเก็บข้อมูลเป็นตาราง แถว คอลัมน์ และดัชนีเพื่อค้นหาข้อมูลที่เกี่ยวข้องได้บ่อยๆ เราสามารถเข้าถึงและจัดการบันทึกผ่านฐานข้อมูลได้อย่างง่ายดายมาก

```sql
CREATE DATABASE [IF NOT EXISTS] database_name  
[CHARACTER SET charset_name]  
[COLLATE collation_name];  
```

**Parameter Explanation**
The parameter descriptions of the above syntax are as follows:

| Parameter | Description |
| --------- | ----------- |
| database_name | It is the name of a new database that should be unique in the MySQL server instance. The IF NOT EXIST clause avoids an error when we create a database that already exists. |
| charset_name | It is optional. It is the name of the character set to store every character in a string. MySQL database server supports many character sets. If we do not provide this in the statement, MySQL takes the default character set. |
| collation_name | It is optional that compares characters in a particular character set. |

Example

```sql
CREATE DATABASE employeesdb;
```

```sql
CREATE DATABASE employeesdb
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;
```

## SELECT Database

SELECT Database is used in MySQL to select a particular database to work with. This query is used when multiple databases are available with MySQL Server.

You can use SQL command USE to select a particular database.

```sql
USE DATABASE_NAME;
```

Example

```sql
USE blog_db;
```

## SHOW Database

When we work with the MySQL server, it is a common task to show or list the databases, displaying the table from a particular database, and information of user accounts and their privileges that reside on the server. In this article, we are going to focus on how to list databases in the MySQL server.

We can list all the databases available on the MySQL server host using the following command, as shown below:

```sql
SHOW DATABASES;
```

List Databases Using Pattern Matching

```sql
SHOW DATABASES LIKE pattern;
OR,  
SHOW DATABASES WHERE expression;
```

We can understand it with the example given below where percent (%) sign assumes zero, one, or multiple characters:

```sql
SHOW DATABASES LIKE "%schema";  
```

## DROP Database

We can drop/delete/remove a MySQL database quickly with the MySQL DROP DATABASE command. It will delete the database along with all the tables, indexes, and constraints permanently. Therefore, we should have to be very careful while removing the database in MySQL because we will lose all the data available in the database. If the database is not available in the MySQL server, the DROP DATABASE statement throws an error.

```sql
DROP DATABASE [IF EXISTS] database_name;
```

In MySQL, we can also use the below syntax for deleting the database. It is because the schema is the synonym for the database, so we can use them interchangeably.

```sql
DROP SCHEMA [IF EXISTS] database_name;
```

## COPY Database

For the demonstration, we will copy the **testdb** database to **testdb_copy** database using the following steps:

```sql
CREATE DATABASE testdb_copy;
```
