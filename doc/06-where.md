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

---

## Where

WHERE Clause is used with SELECT, INSERT, UPDATE and DELETE clause to filter the results. It specifies a specific position where you have to do the operation.

```sql
WHERE conditions;
```

## WHERE Clause with single condition

Let's take an example to retrieve data from a table "amphures".

**Execute this query:**

```sql
SELECT *
FROM amphures
WHERE province_id=1;
```

## WHERE Clause with AND condition

In this example, we are retrieving data from the table "amphures" with AND condition.

```sql
SELECT *
FROM amphures
WHERE province_id=1
AND id < 5;
```

## WHERE Clause with OR condition

Execute the following query:

```sql
SELECT *
FROM amphures
WHERE province_id=1
OR province_id=2;
```

## WHERE Clause with combination of AND & OR conditions

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
FROM officers  
WHERE officer_id <= 3;  
```
