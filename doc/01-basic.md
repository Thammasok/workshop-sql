# MySQL Tutorial

MySQL tutorial provides basic and advanced concepts of MySQL.

## Course Overview

1. [SQL Commands](#sql-commands)
2. [Docker & Connect Database](#docker)
3. [Connect Database](#connect-database)
4. Querying Data
5. Data Transformation
6. Aggregating Data
7. Combining Tables
8. User Managements

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
#!/bin/bash
docker network create our-network
```

**Start**
Start docker via CLI

```bash
#!/bin/bash
docker-compose up -d
```

**Stop**
Stop docker via CLI

```bash
#!/bin/bash
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
