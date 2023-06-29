# Transaction Control

Transactional control commands are only used with the DML Commands such as - INSERT, UPDATE and DELETE only. They cannot be used while creating tables or dropping them because these operations are automatically committed in the database.

Table of Contents

- [Transaction Control](#transaction-control)
  - [Transaction Control Commands](#transaction-control-commands)
    - [The COMMIT Command](#the-commit-command)

---

## Transaction Control Commands

The following commands are used to control transactions.

**COMMIT** − to save the changes.
**ROLLBACK** − to roll back the changes.
**SAVEPOINT** − creates points within the groups of transactions in which to ROLLBACK.
**SET TRANSACTION** − Places a name on a transaction.

### The COMMIT Command

The COMMIT command is the transactional command used to save changes invoked by a transaction to the database.

The COMMIT command is the transactional command used to save changes invoked by a transaction to the database. The COMMIT command saves all the transactions to the database since the last COMMIT or ROLLBACK command.

The syntax for the COMMIT command is as follows.

```sql
COMMIT;
```

Example
Consider the employee table having the following records −

First step we will checkout that employee table.

```sql
USE employee;
```

Copy employee table from employee_sm to employee table

```sql
CREATE TABLE IF NOT EXISTS employee_info
SELECT * FROM employee_sm.employee LIMIT 0,20;
```

Following is an example which would delete those records from the table which have age = 25 and then COMMIT the changes in the database.

```sql
DELETE FROM CUSTOMERS
WHERE AGE = 25;

COMMIT;
```

