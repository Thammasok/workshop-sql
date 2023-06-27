# Functions

Table of Contents

- [Functions](#functions)
  - [COUNT()](#count)
  - [SUMum()](#sumum)
  - [AVG()](#avg)
  - [MIN()](#min)
  - [MAX()](#max)

---

## COUNT()

count() function is used to returns the count of an expression. It allows us to count all rows or only some rows of the table that matches a specified condition. It is a type of aggregate function whose return type is BIGINT. This function returns 0 if it does not find any matching rows.

We can use the count function in three forms, which are explained below:

- Count (*)
- Count (expression)
- Count (distinct)

```sql
SELECT COUNT (aggregate_expression)
FROM table_name
[WHERE conditions];
```

**Example**
Execute the following query that uses the COUNT(expression) function to calculates the total number of employee name in employee_sm table available in the table:

```sql
SELECT COUNT(first_name)
FROM employee;
```

**Example2**
Execute the following statement that returns all rows from the employee table and WHERE clause specifies the rows whose value in the column gender is Male (M):

```sql
SELECT COUNT(gender)
FROM employee
WHERE gender='M';
```

**Example3**
This statement uses the COUNT(distinct expression) function that **counts the Non-Null** and distinct rows in the column age:

```sql
SELECT COUNT(DISTINCT age)
FROM employee;
```

---

## SUMum()

sum() function is used to return the total summed value of an expression. It returns NULL if the result set does not have any rows. It is one of the kinds of aggregate functions in MySQL.

```sql
SELECT SUM(aggregate_expression)
FROM tables
[WHERE conditions];
```

**Example**
Execute the following query that calculates the total number of working hours of all employee in the table:

```sql
SELECT SUM(amount)
FROM salary;
```

**Example 2**
sum() function with WHERE clause:

```sql
SELECT SUM(amount)
FROM salary
WHERE from_date='2000-06-01';
```

---

## AVG()

avg() is an aggregate function used to return the average value of an expression in various records.

```sql
SELECT AVG(aggregate_expression)
FROM tables
[WHERE conditions];
```

**Example**
Execute the following query that calculates the average salary of all employee in the table:

```sql
SELECT AVG(amount)
FROM salary;
```

---

## MIN()

MIN() function in MySQL is used to return the minimum value in a set of values from the table. It is an aggregate function that is useful when we need to find the smallest number, selecting the least expensive product, etc.

```sql
SELECT MIN ( DISTINCT aggregate_expression)
FROM table_name(s)
[WHERE conditions];
```

**Example**
Execute the following query that uses the MIN function to find the minimum salary of the employee available in the table:

```sql
SELECT MIN(amount)
FROM salary
WHERE from_date='2000-06-01';
```

## MAX()

MAX() function is used to return the maximum value in a set of values of an expression. This aggregate function is useful when we need to find the maximum number, selecting the most expensive product, or getting the largest payment to the customer from your table.

```sql
SELECT MAX(DISTINCT aggregate_expression)
FROM table_name(s)
[WHERE conditions];
```

**Example**
Execute the following query that uses the MAX function to find the maximum salary of the employee available in the table:

```sql
SELECT MAX(amount)
FROM salary
WHERE from_date='2000-06-01';
```
