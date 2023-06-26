# MySQL Tutorial

MySQL tutorial provides basic and advanced concepts of MySQL.

## Course Overview

- [MySQL Tutorial](#mysql-tutorial)
  - [Course Overview](#course-overview)
  - [Concept](#concept)
  - [SQL Commands](#sql-commands)
  - [Docker](#docker)
  - [Connect Database](#connect-database)

---

## Concept

**RDBMS vs NoSQL**
Relational Database Management System (RDBMS)
A relational database is a type of database that organizes data into tables with **rows and columns**. Each table represents an entity, and the rows within the table represent instances or records of that entity. The columns, also known as attributes, define the characteristics or properties of the entity.

NoSQL, which stands for "Not Only SQL," is a type of database management system that provides a non-relational approach to storing and retrieving data. Unlike traditional Relational Database Management Systems (RDBMS), NoSQL databases do not use the structured table-based schema found in RDBMS. Instead, they use flexible data models that can vary from document-oriented, key-value pairs, wide-column stores, or graph databases.

**Database Relationship Types**
A relational database implements three different types of relationships:

1. One-to-one (1:1)

2. One-to-many (1:N)

3. Many-to-many (N:N)

Ref: <https://saixiii.com/database-sql-operator/>

---

## SQL Commands

These SQL commands are mainly categorized into five categories:

1. DDL – Data Definition Language
2. DQL – Data Query Language
3. DML – Data Manipulation Language
4. DCL – Data Control Language
5. TCL – Transaction Control Language

![Five categories of SQL commands.](../images/sql-command.png)

---

## Docker

Docker workspace for mysql workshop

**Create Bride**
Create a bride before start docker compose.

```bash
docker network create our-network
```

**Start**
Start docker via CLI

```bash
docker-compose up -d --force-recreate
```

**Stop**
Stop docker via CLI

```bash
docker-compose down -v
```

**Access to Command**
Stop docker via CLI

```bash
docker exec -it mariadb bash
```

---

## Connect Database

Connect database vi CLI

```bash
mysql -h 127.0.0.1 -u root -p [DATABASE_NAME]
```

example

```bash
mysql -h 127.0.0.1 -u root -p ecommerce
```
