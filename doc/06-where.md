# WHERE Clause

Table of Contents

- [WHERE Clause](#where-clause)
  - [Where](#where)
    - [WHERE Clause with single condition](#where-clause-with-single-condition)
    - [WHERE Clause with AND condition](#where-clause-with-and-condition)
    - [WHERE Clause with OR condition](#where-clause-with-or-condition)
    - [WHERE Clause with combination of AND \& OR conditions](#where-clause-with-combination-of-and--or-conditions)
  - [Distinct Clause](#distinct-clause)
  - [FROM Clause](#from-clause)
  - [ORDER BY Clause](#order-by-clause)
  - [GROUP BY Clause](#group-by-clause)
  - [HAVING Clause](#having-clause)

---

## Where

WHERE Clause is used with SELECT, INSERT, UPDATE and DELETE clause to filter the results. It specifies a specific position where you have to do the operation.

```sql
WHERE conditions;
```

### WHERE Clause with single condition

Let's take an example to retrieve data from a table "amphures".

**Execute this query:**

```sql
SELECT *
FROM amphures
WHERE province_id=1;
```

### WHERE Clause with AND condition

In this example, we are retrieving data from the table "amphures" with AND condition.

```sql
SELECT *
FROM amphures
WHERE province_id=1
AND id < 5;
```

### WHERE Clause with OR condition

Execute the following query:

```sql
SELECT *
FROM amphures
WHERE province_id=1
OR province_id=2;
```

### WHERE Clause with combination of AND & OR conditions

You can also use the AND & OR conditions altogether with the WHERE clause.

```sql
SELECT *
FROM provinces
WHERE (code > 20 AND code < 25)
OR code=90;
```

---

## Distinct Clause

DISTINCT clause is used to remove duplicate records from the table and fetch only the unique records. The DISTINCT clause is only used with the SELECT statement.

```sql
SELECT DISTINCT expressions
FROM tables
[WHERE conditions];
```

**DISTINCT Clause with single expression**
If you use a single expression then the MySQL DISTINCT clause will return a single field with unique records (no duplicate record).

```sql
SELECT DISTINCT geography_id
FROM provinces;
```

**DISTINCT Clause with multiple expressions**
If you use multiple expressions with DISTINCT Clause then MySQL DISTINCT clause will remove duplicates from more than one field in your SELECT statement.

```sql
SELECT DISTINCT officer_name, address
FROM officers;
```

## FROM Clause

FROM Clause is used to select some records from a table. It can also be used to retrieve records from multiple tables using JOIN condition.

```sql
FROM table1  
[ { INNER JOIN | LEFT [OUTER] JOIN| RIGHT [OUTER] JOIN } table2  
ON table1.column1 = table2.column1 ]
```

**FROM Clause: Retrieve data from one table**
The following query specifies how to retrieve data from a single table.

```sql
SELECT *
FROM provinces
WHERE id <= 3;
```

**FROM Clause: Retrieve data from two tables with inner join**
Let's take an example to retrieve data from two tables using **INNER JOIN**.

Here, we have two tables "provinces" and "amphures".

```sql
SELECT provinces.name_th, amphures.name_th
FROM provinces
INNER JOIN amphures
ON provinces.id = amphures.province_id
WHERE provinces.name_en="Bangkok";
```

**FROM Clause: Retrieve data from two tables using outer join**
Execute the following query:

```sql
SELECT provinces.name_th, amphures.name_th
FROM provinces
LEFT OUTER JOIN amphures
ON provinces.id = amphures.province_id
WHERE provinces.name_en="Bangkok";
```

---

## ORDER BY Clause

ORDER BY Clause is used to sort the records in ascending or descending order.

```sql
SELECT expressions
FROM tables
[WHERE conditions]
ORDER BY expression [ ASC | DESC ];
```

**Parameters**
| Parameters | Description |
| ---------- | ----------- |
| expressions | It specifies the columns that you want to retrieve. |
| tables | It specifies the tables, from where you want to retrieve records. There must be at least one table listed in the FROM clause. |
| WHERE conditions | It is optional. It specifies conditions that must be fulfilled for the records to be selected. |
| ASC | It is optional. It sorts the result set in ascending order by expression (default, if no modifier is provider). |
| DESC | It is also optional. It sorts the result set in descending order by expression. |

**ORDER BY: without using ASC/DESC attribute**
If you use SQL ORDER BY clause **without specifying the ASC and DESC** modifier then by default you will get the result in **ascending order**.

```sql
SELECT *  
FROM districts
WHERE amphure_id=4  
ORDER BY name_en;

-- OR

SELECT *  
FROM districts
WHERE amphure_id=4  
ORDER BY name_en ASC;
```

**ORDER BY: with DESC attribute**
Let's take an example to retrieve the data in descending order.

```sql
SELECT *  
FROM districts
WHERE amphure_id=1  
ORDER BY name_en DESC;
```

**ORDER BY: using both ASC and DESC attributes**
Execute the following query:

```sql
SELECT *
FROM amphures
ORDER BY code DESC, name_en ASC;
```

## GROUP BY Clause

GROUP BY Clause is used to collect data from multiple records and group the result by one or more column. It is generally used in a SELECT statement.

You can also use some aggregate functions like COUNT, SUM, MIN, MAX, AVG etc. on the grouped column.

```sql
SELECT expression1, expression2, ... expression_n,
aggregate_function (expression)
FROM tables
[WHERE conditions]
GROUP BY expression1, expression2, ... expression_n;
```

**Parameters**
| Parameters | Description |
| ---------- | ----------- |
| expression1, expression2, ... expression_n | It specifies the expressions that are not encapsulated within an aggregate function and must be included in the GROUP BY clause. |
| aggregate_function | It specifies a function such as SUM, COUNT, MIN, MAX, or AVG etc. tables: It specifies the tables, from where you want to retrieve the records. There must be at least one table listed in the FROM clause. |
| WHERE conditions | It is optional. It specifies conditions that must be fulfilled for the records to be selected. |

**GROUP BY Clause with COUNT function**
Consider a table named "products" table (ecommerce), having the following records.

```sql
SELECT category_id, COUNT(*)
FROM products
GROUP BY category_id;
```

**GROUP BY Clause with SUM function**
Let's take a table "products" table (ecommerce), having the following data.

```sql
SELECT category_id, SUM(price) AS "Total price"
FROM products
GROUP BY category_id;
```

**GROUP BY Clause with MIN function**
The following example specifies the minimum price of the category form the table "products" (ecommerce).

```sql
SELECT category_id, MIN(price) AS "Min price"
FROM products
GROUP BY category_id;
```

**GROUP BY Clause with MAX function**
The following example specifies the maximum price of the category form the table "products" (ecommerce).

```sql
SELECT category_id, MAX(price) AS "Max price"
FROM products
GROUP BY category_id;
```

**GROUP BY Clause with AVG function**
The following example specifies the average price of the category form the table "products".

```sql
SELECT category_id, AVG(price) AS "Average price"
FROM products
GROUP BY category_id;
```

---

## HAVING Clause

HAVING Clause is used with GROUP BY clause. It always returns the rows where condition is TRUE.

```sql
SELECT expression1, expression2, ... expression_n,
aggregate_function (expression)
FROM tables
[WHERE conditions]
GROUP BY expression1, expression2, ... expression_n
HAVING condition;
```

**Parameters**
| Parameters | Description |
| ---------- | ----------- |
| aggregate_function | It specifies any one of the aggregate function such as SUM, COUNT, MIN, MAX, or AVG. |
| expression1, expression2, ... expression_n | It specifies the expressions that are not encapsulated within an aggregate function and must be included in the GROUP BY clause. |
| WHERE conditions | It is optional. It specifies the conditions for the records to be selected. |
| HAVING condition | It is used to restrict the groups of returned rows. It shows only those groups in result set whose conditions are TRUE. |

**HAVING Clause with SUM function**
Consider a table "employees" table having the following data.

```sql
SELECT category_id, SUM(price) AS "Total price"
FROM products
GROUP BY category_id
HAVING SUM(price) > 200;
```
