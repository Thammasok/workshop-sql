# MySQL Tutorial

MySQL tutorial provides basic and advanced concepts of MySQL.

## Course Overview

1. [Docker & Connect Database](#docker)
2. Basic Concepets
3. Data Types

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

## Simple Query

you can query data

```sql
SELECT * FROM [TABLE_NAME]
```

example

```sql
mysql -h 127.0.0.1 -u root -p ecommerce
```
