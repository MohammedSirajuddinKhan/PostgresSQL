# SQL Clauses — Beginner Reference

> SQL clauses are keywords used to tell the database what data you want and how you want it.

## 1. SELECT

Used to choose which columns you want.

```sql
SELECT name, price
FROM products;
```

Get everything:

```sql
SELECT *
FROM products;
```

## 2. FROM

Specifies the table you want data from.

```sql
SELECT *
FROM products;
```

## 3. WHERE

Filters rows based on a condition.

```sql
SELECT *
FROM products
WHERE price > 50000;
```

Multiple conditions:

```sql
SELECT *
FROM products
WHERE price > 50000
AND category = 'Laptop';
```

## 4. DISTINCT

Removes duplicate values.

```sql
SELECT DISTINCT category
FROM products;
```

## 5. ORDER BY

Sorts the result.

```sql
SELECT *
FROM products
ORDER BY price ASC;
```

```sql
SELECT *
FROM products
ORDER BY price DESC;
```

`ASC` = low → high  
`DESC` = high → low

## 6. LIMIT

Limits the number of results.

```sql
SELECT *
FROM products
LIMIT 5;
```

## 7. OFFSET

Skips a number of rows.

```sql
SELECT *
FROM products
OFFSET 5;
```

Useful with pagination:

```sql
SELECT *
FROM products
LIMIT 10
OFFSET 20;
```

## 8. GROUP BY

Groups rows with the same value.

```sql
SELECT category, COUNT(*)
FROM products
GROUP BY category;
```

## 9. HAVING

Filters groups created by `GROUP BY`.

```sql
SELECT category, COUNT(*)
FROM products
GROUP BY category
HAVING COUNT(*) > 10;
```

### WHERE vs HAVING

```text
WHERE   → filters rows
HAVING  → filters groups
```

## 10. AS

Creates an alias (temporary name).

```sql
SELECT price AS product_price
FROM products;
```

You can also rename tables:

```sql
SELECT p.name
FROM products AS p;
```

## 11. JOIN

Used to combine data from multiple tables.

```sql
SELECT students.name, courses.name
FROM students
JOIN courses
ON students.course_id = courses.id;
```

Common JOIN types:

```text
INNER JOIN → matching rows only
LEFT JOIN  → everything from left table
RIGHT JOIN → everything from right table
FULL JOIN  → everything from both tables
```

## 12. INSERT

Adds new data.

```sql
INSERT INTO products (name, price)
VALUES ('Laptop', 50000);
```

## 13. UPDATE

Changes existing data.

```sql
UPDATE products
SET price = 55000
WHERE id = 1;
```

Always be careful with `UPDATE` without `WHERE`.

## 14. DELETE

Deletes data.

```sql
DELETE FROM products
WHERE id = 1;
```

Without `WHERE`, you can delete all rows.

## 15. BETWEEN

Checks whether a value is within a range.

```sql
SELECT *
FROM products
WHERE price BETWEEN 30000 AND 60000;
```

## 16. IN

Checks multiple possible values.

```sql
SELECT *
FROM products
WHERE category IN ('Laptop', 'Mobile');
```

## 17. LIKE

Searches for a pattern.

Starts with:

```sql
WHERE name LIKE 'A%';
```

Ends with:

```sql
WHERE name LIKE '%Pro';
```

Contains:

```sql
WHERE name LIKE '%book%';
```

`%` = any number of characters.

## 18. IS NULL

Checks for missing values.

```sql
SELECT *
FROM users
WHERE phone IS NULL;
```

Not null:

```sql
WHERE phone IS NOT NULL;
```

## 19. CASE

Works like `if/else`.

```sql
SELECT name,
       CASE
           WHEN price > 50000 THEN 'Expensive'
           ELSE 'Affordable'
       END AS price_type
FROM products;
```

# SQL Clause Order

```text
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT
OFFSET
```

Example:

```sql
SELECT category, COUNT(*)
FROM products
WHERE price > 10000
GROUP BY category
HAVING COUNT(*) > 2
ORDER BY COUNT(*) DESC
LIMIT 5;
```

# Beginner Cheat Sheet

| Clause | Purpose |
|---|---|
| `SELECT` | Choose columns |
| `FROM` | Choose table |
| `WHERE` | Filter rows |
| `DISTINCT` | Remove duplicates |
| `ORDER BY` | Sort results |
| `LIMIT` | Limit results |
| `OFFSET` | Skip results |
| `GROUP BY` | Group rows |
| `HAVING` | Filter groups |
| `JOIN` | Combine tables |
| `AS` | Rename temporarily |
| `INSERT` | Add data |
| `UPDATE` | Change data |
| `DELETE` | Remove data |
| `BETWEEN` | Range |
| `IN` | Multiple values |
| `LIKE` | Pattern search |
| `IS NULL` | Check missing data |
| `CASE` | If/else logic |

# 🧠 Easy Way to Remember

```text
SELECT → What?
FROM   → Where?
WHERE  → Which?
GROUP BY → Group?
HAVING → Which groups?
ORDER BY → Sort?
LIMIT  → How many?
```
