# Table

Table of Contents

- [Table](#table)
  - [Create Table](#create-table)
  - [Show Table](#show-table)
  - [ALTER Table](#alter-table)
    - [ADD a column in the table](#add-a-column-in-the-table)
    - [Add multiple columns in the table](#add-multiple-columns-in-the-table)
    - [MODIFY column in the table](#modify-column-in-the-table)
    - [DROP column in table](#drop-column-in-table)
    - [RENAME column in table](#rename-column-in-table)
    - [RENAME table](#rename-table)
  - [AUTO INCREMENT Field](#auto-increment-field)
  - [TRUNCATE Table](#truncate-table)
  - [DROP Table](#drop-table)
  - [Copy/Clone/Duplicate Table](#copycloneduplicate-table)
  - [View](#view)
    - [Create View](#create-view)
    - [Update View](#update-view)
  
---

## Create Table

MySQL allows us to create a table into the database by using the CREATE TABLE command. Following is a generic syntax for creating a MySQL table in the database.

```sql
CREATE TABLE [IF NOT EXISTS] table_name(  
    column_definition1,  
    column_definition2,  
    ........,  
    table_constraints  
);
```

**Parameter Explanation**
The parameter descriptions of the above syntax are as follows:

| Parameter | Description |
| --------- | ----------- |
| database_name | It is the name of a new table. It should be unique in the MySQL database that we have selected. The IF NOT EXIST clause avoids an error when we create a table into the selected database that already exists. |
| column_definition | It specifies the name of the column along with data types for each column. The columns in table definition are separated by the comma operator. The syntax of column definition is as follows: **column_name1** **data_type(size)** [**NULL** or **NOT NULL**] |
| table_constraints | It specifies the table constraints such as PRIMARY KEY, UNIQUE KEY, FOREIGN KEY, CHECK, etc. |

```sql
CREATE TABLE new_table_name (
    col_name1 datatype constraint,
    col_name2 datatype constraint,
    col_name3 datatype constraint,
    .........
);
```

**Constraints used in MySQL**
The following are the most common constraints used in the MySQL:

```text
NOT NULL
CHECK
DEFAULT
PRIMARY KEY
AUTO_INCREMENT
UNIQUE
INDEX
ENUM
FOREIGN KEY
```

Ref: <https://www.javatpoint.com/mysql-constraints>

Example

```sql
CREATE TABLE employee_list(  
    id int NOT NULL AUTO_INCREMENT,
    name varchar(45) NOT NULL,
    occupation varchar(35) NOT NULL,
    gender ENUM('male','female','not-specific') NOT NULL DEFAULT 'not-specific',
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);
```

---

## Show Table

We need to use the following command to see the newly created table:

```sql
SHOW [FULL] TABLES;

or

SHOW TABLES LIKE pattern;
SHOW TABLES WHERE expression;
```

See the table structure:

We can use the following command to see the information or structure of the newly created table:

```sql
{DESCRIBE | DESC} TABLE_NAME;
```

---

## ALTER Table

ALTER statement is used when you want to change the name of your table or any table field. It is also used to add or delete an existing column in a table.

The ALTER statement is always used with "ADD", "DROP" and "MODIFY" commands according to the situation.

---

### ADD a column in the table

```sql
ALTER TABLE table_name  
ADD new_column_name column_definition  
[ AFTER column_name ];
```

**Parameters**
| Parameter | Description |
| --------- | ----------- |
| table_name | It specifies the name of the table that you want to modify. |
| new_column_name | It specifies the name of the new column that you want to add to the table. |
| column_definition | It specifies the data type and definition of the column (NULL or NOT NULL, etc). |
| AFTER column_name: | It is optional. It tells MySQL where in the table to create the column. If this parameter is not specified, the new column will be added to the end of the table. |

Example:

In this example, we add a new column "cus_age" in the existing table "cus_tbl".

Use the following query to do this:

```sql
ALTER TABLE employee_list  
ADD age varchar(40) NOT NULL;
```

### Add multiple columns in the table

```sql
ALTER TABLE table_name
  ADD new_column_name column_definition,
  ADD new_column_name column_definition,
  [ AFTER column_name ],
;
```

Example

```sql
ALTER TABLE employee_list
ADD address varchar(100) NOT NULL,
ADD salary decimal(6,2) NOT NULL,
ADD birth_date DATE NULL,
AFTER name,
```

### MODIFY column in the table

```sql
ALTER TABLE table_name  
MODIFY column_name column_definition  
[ AFTER column_name ];
```

Example:

In this example, we modify the column cus_surname to be a data type of varchar(50) and force the column to allow NULL values.

Use the following query to do this:

```sql
ALTER TABLE employee_list
MODIFY age int(3) NULL;
```

### DROP column in table

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

Let's take an example to drop the column name "age" from the table "employee".

Use the following query to do this:

```sql
ALTER TABLE employee_list
DROP COLUMN age;
```

### RENAME column in table

```sql
ALTER TABLE table_name
CHANGE COLUMN old_name new_name
column_definition
[ AFTER column_name ]
```

Example:

In this example, we will change the column name "birth_date" to "birthdate".

Use the following query to do this:

```sql
ALTER TABLE  employee_list
CHANGE COLUMN birth_date birthdate
DATE NULL;
```

### RENAME table

```sql
ALTER TABLE table_name
RENAME TO new_table_name;  
```

Example:

In this example, the table name employee_list is renamed as employee.

```sql
ALTER TABLE employee_list
RENAME TO employee;
```

---

## AUTO INCREMENT Field

```sql
ALTER TABLE employee AUTO_INCREMENT=10;
```

---

## TRUNCATE Table

The TRUNCATE statement in MySQL removes the complete data without removing its structure.

```sql
TRUNCATE [TABLE] table_name;
```

**Truncate Table Example**
Let us demonstrate how we can truncate the table with the help of an example. First, we are going to create a table named "customer" using the below statement:

```sql
CREATE TABLE customer (    
    id int PRIMARY KEY NOT NULL,
    name varchar(45) NOT NULL,
    product varchar(45) DEFAULT NULL,
    country varchar(25) DEFAULT NULL,
    year int NOT NULL
);
```

Next, we will add values to this table using the below statement:

```sql
INSERT INTO customer ( id, name, product, country, year)     
VALUES (1, 'Stephen', 'Computer', 'USA', 2015),
(2, 'Joseph', 'Laptop', 'India', 2016),
(3, 'John', 'TV', 'USA', 2016),
(4, 'Donald', 'Laptop', 'England', 2015),
(5, 'Joseph', 'Mobile', 'India', 2015),
(6, 'Peter', 'Mouse', 'England', 2016);
```

Now, verify the table by executing the SELECT statement whether the records inserted or not:

```sql
SELECT * FROM customer;
```

Now, execute the following statement that truncates the table customer using the TRUNCATE syntax discussed above:

```sql
TRUNCATE TABLE customer;
```

```text
Note 
How to Truncate Table with Foreign key?
If we perform the TRUNCATE operation for the table that uses a foreign key constraint, we will get the following error:

ERROR 1217 (23000): Cannot delete or update a parent row: a foreign key constraint fails  

In that case, we need to log into the MySQL server and disable foreign key checks before executing the TRUNCATE statement as below:

SET FOREIGN_KEY_CHECKS=0;

Now, we are able to truncate tables. After execution, re-enable foreign key checks as given below:

SET FOREIGN_KEY_CHECKS=1;
```

---

## DROP Table

uses a Drop Table statement to delete the existing table.

```sql
DROP TABLE table_name;
OR,  
DROP TABLE schema_name.table_name;
```

---

## Copy/Clone/Duplicate Table

copy or clone table is a feature that allows us to create a duplicate table of an existing table, including the table structure, indexes, constraints, default values, etc

Let us demonstrate how we can create a duplicate table with the help of an example. First, we are going to create a table named "original_table" using the below statement:

```sql
CREATE TABLE original_table (
    id int PRIMARY KEY NOT NULL,
    name varchar(45) NOT NULL,
    product varchar(45) DEFAULT NULL,
    country varchar(25) DEFAULT NULL,
    year int NOT NULL
);
```

Next, it is required to add values to this table. Execute the below statement:

```sql
INSERT INTO original_table( id, name, product, country, year) 
VALUES (1, 'Stephen', 'Computer', 'USA', 2015),
(2, 'Joseph', 'Laptop', 'India', 2016),
(3, 'John', 'TV', 'USA', 2016),
(4, 'Donald', 'Laptop', 'England', 2015),
(5, 'Joseph', 'Mobile', 'India', 2015),
(6, 'Peter', 'Mouse', 'England', 2016);
```

Next, execute the SELECT statement to display the records:

```sql
SELECT * FROM original_table;
```

Now, execute the following statement that copies data from the existing table "original_table" to a new table named "duplicate_table" in the selected database.

```sql
CREATE TABLE IF NOT EXISTS duplicate_table  
SELECT * FROM original_table;
```

Sometimes there is a need to copy only partial data from an existing table to a new table. In that case, we can use the WHERE clause with the SELECT statement as follows:

```sql
CREATE TABLE IF NOT EXISTS duplicate_table
SELECT * FROM original_table WHERE Year = '2016';
```

---

## View

The View is a virtual table created by a query by joining one or more tables. It is operated similarly to the base table but does not contain any data of its own. The View and table have one main difference that the views are definitions built on top of other tables (or views). If any changes occur in the underlying table, the same changes reflected in the View also.

### Create View

We can create a new view by using the CREATE VIEW and SELECT statement. SELECT statements are used to take data from the source table to make a VIEW.

```sql
CREATE [OR REPLACE] VIEW view_name AS
SELECT columns
FROM tables
[WHERE conditions];
```

**OR REPLACE**: It is optional. It is used when a VIEW already exists. If you do not specify this clause and the VIEW already exists, the CREATE VIEW statement will return an error.

**Example**
Let us understand it with the help of an example. Suppose our database has a table course, and we are going to create a view based on this table. Thus, the below example will create a VIEW name "trainer" that creates a virtual table made by taking data from the table courses.

```sql
CREATE VIEW original_table_view AS
SELECT name, product
FROM original_table;
```

Let's see how it looks the created VIEW:

```sql
SELECT * FROM original_table;
```

edit record product from id: 6 from mobile to TV

```sql
UPDATE original_table
SET product = 'TV'
WHERE id=6;
```

### Update View

the ALTER VIEW statement is used to modify or update the already created VIEW without dropping it.

```sql
ALTER VIEW view_name AS
SELECT columns
FROM table
WHERE conditions;
```

example

```sql
ALTER VIEW original_table_view AS
SELECT id, name, product
FROM original_table;    
```
