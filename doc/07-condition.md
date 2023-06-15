# Conditions

Table of Contents

- [Conditions](#conditions)
  - [AND Condition](#and-condition)
  - [OR Condition](#or-condition)
  - [AND \& OR condition](#and--or-condition)
  - [LIKE condition](#like-condition)
  - [IN Condition](#in-condition)
  - [ANY](#any)
  - [Exists](#exists)
  - [Not Equal](#not-equal)
  - [BETWEEN Condition](#between-condition)
  - [IS NULL Condition](#is-null-condition)
  - [IS NOT NULL Condition](#is-not-null-condition)
  - [NOT Condition](#not-condition)

---

## AND Condition

AND condition is used with SELECT, INSERT, UPDATE or DELETE statements to test two or more conditions in an individual query.

```sql
WHERE condition1
AND condition2
...
AND condition_n;
```

**Example**
The following example specifies how to use the AND condition in SQL with SELECT statement.

```sql
SELECT *
FROM products
WHERE price > 50 AND price < 100;
```

---

## OR Condition

OR condition specifies that if you take two or more conditions then one of the conditions must be fulfilled to get the records as result.

```sql
WHERE condition1
OR condition2
...
OR condition_n;
```

**Example**
The following example specifies how to use the OR condition in MySQL with SELECT statement.

```sql
SELECT *
FROM products
WHERE price < 50 OR price > 100;
```

## AND & OR condition

You can use AND & OR condition both together with the SELECT, INSERT, UPDATE and DELETE statement. While combine these conditions, you must be aware where to use round brackets so that the database know the order to evaluate each condition.

```sql
WHERE condition1
AND condition2
...
OR condition_n;
```

**Example**

```sql
SELECT *
FROM products
WHERE category_id = 1 AND (price < 50 OR price > 100);
```

---

## LIKE condition

LIKE condition is used to perform pattern matching to find the correct result. It is used in SELECT, INSERT, UPDATE and DELETE statement with the combination of WHERE clause.

```sql
WHERE expression LIKE pattern [ ESCAPE 'escape_character' ]  
```

1. Using % (percent) Wildcard:

```sql
SELECT *
FROM products
WHERE unit LIKE "%bottles";
```

2. Using _ (Underscore) Wildcard:

```sql
SELECT *
FROM products
WHERE product_name LIKE "Anis___ Syrup";
-- Anis___ Syrup => Aniseed Syrup
```

3. Using NOT Operator:

```sql
SELECT *
FROM products
WHERE unit NOT LIKE "%bottles";
```

## IN Condition

IN condition is used to reduce the use of multiple OR conditions in a SELECT, INSERT, UPDATE and DELETE statement.

```sql
WHERE expression IN (value1, value2, .... value_n);
```

Example

```sql
SELECT *
FROM products
WHERE category_id IN (1,3,6);
```

---

## ANY

The ANY keyword is a SQL operator that returns the Boolean value TRUE if the comparison is TRUE for ANY of the subquery condition.

Ref: <https://saixiii.com/database-sql-operator/>

The following is the syntax that illustrates the use of ANY operator in SQL:

```sql
operand comparison_operator ANY (subquery)  
```

Where comparison operators can be one of the following:

```sql
=  >  <  >=  <=  <>  !=  
```

This syntax can also be written as:

```sql
SELECT column_lists
FROM table_name1
WHERE column_name Operator ANY (SELECT column_name FROM table_name2 WHERE condition);
```

Example

```sql
SELECT product_name, category_id
FROM products
WHERE category_id > ANY (SELECT category_id FROM categories WHERE category_id < 3);
```

---

## Exists

The EXISTS operator in SQL is a type of Boolean operator which returns the true or false result. It is used in combination with a subquery and checks the existence of data in a subquery. It means if a subquery returns any record, this operator returns true. Otherwise, it will return false. The true value is always represented numeric value 1, and the false value represents 0. We can use it with SELECT, UPDATE, DELETE, INSERT statement.

```sql
SELECT col_names
FROM tab_name
WHERE [NOT] EXISTS (  
    SELECT col_names
    FROM tab_name
    WHERE condition
);
```

**EXISTS Operator Example**
Let us understand how the EXISTS operator works in SQL. Here, we are going to first create two tables named "customers" and "orders" using the following statement:

```sql
SELECT customer_name, contact_name
FROM customers
WHERE EXISTS (SELECT * FROM orders   
WHERE customers.customer_id = orders.customer_id);
```

---

## Not Equal

Not Equal is an inequality operator that used for returning a set of rows after comparing two expressions that are not equal. The SQL contains two types of Not Equal operator, which are (< >) and (! =).

Example

```sql
SELECT *
FROM categories
WHERE category_name <> "Dairy Products";

-- or

SELECT *
FROM categories
WHERE category_name != "Dairy Products";

```

---

## BETWEEN Condition

BETWEEN condition specifies how to retrieve values from an expression within a specific range. It is used with SELECT, INSERT, UPDATE and DELETE statement.

```sql
expression BETWEEN value1 AND value2;
```

Execute the following query:

```sql
SELECT *
FROM products
WHERE price BETWEEN 20 AND 35;
```

**BETWEEN condition with date:**
BETWEEN condition also facilitates you to retrieve records according to date.

```sql
SELECT *
FROM orders
WHERE order_date BETWEEN CAST('1996-07-05' AS DATE) AND CAST('1996-07-10' AS DATE);
```

---

## IS NULL Condition

IS NULL condition is used to check if there is a NULL value in the expression. It is used with SELECT, INSERT, UPDATE and DELETE statement.

```sql
expression IS NULL
```

Execute the following query:

```sql
SELECT *
FROM employees
WHERE birth_date IS NULL;
```

## IS NOT NULL Condition

IS NOT NULL condition is used to check the NOT NULL value in the expression. It is used with SELECT, INSERT, UPDATE and DELETE statements.

```sql
expression IS NOT NULL
```

Execute the following query:

```sql
SELECT *
FROM employees
WHERE birth_date IS NOT NULL;
```

---

## NOT Condition

NOT condition is opposite of MySQL IN condition. It is used to negate a condition in a SELECT, INSERT, UPDATE or DELETE statement.

```sql
NOT condition
```

**NOT Operator with IN condition**
Execute the following query:

```sql
SELECT *
FROM products
WHERE category_id NOT IN (1,3,4,5,6);
```

**NOT Operator with IS NULL condition:**
Execute the following query:

```sql
SELECT *
FROM products
WHERE product_name IS NOT NULL;
```

**NOT Operator with LIKE condition:**
Execute the following query:

```sql
SELECT *
FROM categories
WHERE category_name NOT LIKE "Condiments"
```

**NOT Operator with BETWEEN condition:**
Execute the following query:

```sql
SELECT *
FROM products
WHERE price NOT BETWEEN 10 AND 80;
```

---
