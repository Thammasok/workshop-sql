# Transaction Control

Transactional control commands are only used with the DML Commands such as - INSERT, UPDATE and DELETE only. They cannot be used while creating tables or dropping them because these operations are automatically committed in the database.

Table of Contents

- [Transaction Control](#transaction-control)
  - [Transaction Control Commands](#transaction-control-commands)
    - [The Start Command](#the-start-command)
    - [The COMMIT Command](#the-commit-command)
    - [The ROLLBACK Command](#the-rollback-command)
    - [The SAVEPOINT Command](#the-savepoint-command)

---

## Transaction Control Commands

The following commands are used to control transactions.

**COMMIT** − to save the changes.
**ROLLBACK** − to roll back the changes.
**SAVEPOINT** − creates points within the groups of transactions in which to ROLLBACK.
**SET TRANSACTION** − Places a name on a transaction.

---

### The Start Command

```sql
START TRANSACTION;
```

---

### The COMMIT Command

The COMMIT command is the transactional command used to save changes invoked by a transaction to the database.

The COMMIT command is the transactional command used to save changes invoked by a transaction to the database. The COMMIT command saves all the transactions to the database since the last COMMIT or ROLLBACK command.

The syntax for the COMMIT command is as follows.

```sql
COMMIT;
```

**Example**
Consider the employee table having the following records −

First step we will checkout that employee table.

```sql
USE employee;
```

create customers table

```sql
CREATE TABLE customers (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  age int NOT NULL,
  address varchar(255) NOT NULL,
  salary decimal(8,2) NOT NULL,
  PRIMARY KEY (id)
);
```

Insert New Data into customers table

```sql
INSERT INTO customers (name, age, address, salary) VALUES
('Ramesh', 32, 'Ahmedabad', 2000.00)
('Khilan', 25, 'Delhi', 1500.00),
('kaushik', 23, 'Kota', 2000.00),
('Chaitali', 25, 'Mumbai', 6500.00),
('Hardik', 27, 'Bhopal', 8500.00),
('Komal', 22, 'MP', 4500.00),
('Muffy', 24, 'Indore', 10000.00);
```

Following is an example which would delete those records from the table which have age = 25 and then COMMIT the changes in the database.

```sql
DELETE FROM customers
WHERE age = 25;
```

Commit transaction

```sql
COMMIT;
```

---

### The ROLLBACK Command

The ROLLBACK command is the transactional command used to undo transactions that have not already been saved to the database. This command can only be used to undo transactions since the last COMMIT or ROLLBACK command was issued.

The syntax for a ROLLBACK command is as follows −

```sql
ROLLBACK;
```

Following is an example, which would delete those records from the table which have the age = 25 and then ROLLBACK the changes in the database.

```sql
DELETE FROM customers
WHERE AGE = 25;
```

---

### The SAVEPOINT Command

A SAVEPOINT is a point in a transaction when you can roll the transaction back to a certain point without rolling back the entire transaction.

The syntax for a SAVEPOINT command is as shown below.

```sql
SAVEPOINT SAVEPOINT_NAME;
```

This command serves only in the creation of a SAVEPOINT among all the transactional statements. The ROLLBACK command is used to undo a group of transactions.

The syntax for rolling back to a SAVEPOINT is as shown below.

```sql
ROLLBACK TO SAVEPOINT_NAME;
```

**Example**
Consider the customers table having the following records.

```sql
START TRANSACTION;
```

The following code block contains the series of operations.

```sql
SAVEPOINT SP1;

DELETE FROM CUSTOMERS WHERE ID=1;

SAVEPOINT SP2;

DELETE FROM CUSTOMERS WHERE ID=2;

SAVEPOINT SP3;

DELETE FROM CUSTOMERS WHERE ID=3;
```

Now that the three deletions have taken place, let us assume that you have changed your mind and decided to ROLLBACK to the SAVEPOINT that you identified as SP2. Because SP2 was created after the first deletion, the last two deletions are undone −

```sql
ROLLBACK TO SP2;
```
