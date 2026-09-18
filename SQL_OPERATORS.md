# SQL Operators — Beginner Reference

> SQL operators are symbols or keywords used to compare, calculate, combine, or filter data.

## 1. Comparison Operators

| Operator | Meaning | Example |
|---|---|---|
| `=` | Equal to | `price = 50000` |
| `<>` | Not equal to | `price <> 50000` |
| `!=` | Not equal to | `price != 50000` |
| `>` | Greater than | `price > 50000` |
| `<` | Less than | `price < 50000` |
| `>=` | Greater than or equal | `price >= 50000` |
| `<=` | Less than or equal | `price <= 50000` |

Example:

```sql
SELECT *
FROM products
WHERE price > 50000;
```

## 2. Logical Operators

### AND

Both conditions must be true.

```sql
SELECT *
FROM products
WHERE price > 30000
AND category = 'Laptop';
```

### OR

At least one condition must be true.

```sql
SELECT *
FROM products
WHERE category = 'Laptop'
OR category = 'Mobile';
```

### NOT

Reverses a condition.

```sql
SELECT *
FROM products
WHERE NOT category = 'Laptop';
```

Easy way:

```text
AND → both
OR  → either
NOT → opposite
```

## 3. Arithmetic Operators

| Operator | Meaning | Example |
|---|---|---|
| `+` | Add | `price + 1000` |
| `-` | Subtract | `price - 1000` |
| `*` | Multiply | `price * 2` |
| `/` | Divide | `price / 2` |
| `%` | Remainder | `price % 2` |

Example:

```sql
SELECT name, price * 2 AS double_price
FROM products;
```

## 4. BETWEEN

Checks whether a value is inside a range.

```sql
SELECT *
FROM products
WHERE price BETWEEN 30000 AND 60000;
```

Think:

```text
30000 ≤ price ≤ 60000
```

## 5. IN

Checks whether a value matches one of several values.

```sql
SELECT *
FROM products
WHERE category IN ('Laptop', 'Mobile', 'Tablet');
```

Instead of:

```sql
WHERE category = 'Laptop'
OR category = 'Mobile'
OR category = 'Tablet';
```

## 6. LIKE

Searches for a text pattern.

Starts with A:

```sql
WHERE name LIKE 'A%';
```

Ends with Pro:

```sql
WHERE name LIKE '%Pro';
```

Contains book:

```sql
WHERE name LIKE '%book%';
```

`%` = any number of characters.

## 7. IS NULL

Checks for missing values.

```sql
SELECT *
FROM users
WHERE phone IS NULL;
```

Not missing:

```sql
WHERE phone IS NOT NULL;
```

⚠️ Don't use `WHERE phone = NULL;`. Use `IS NULL`.

## 8. ANY

Compares a value with any value returned by a subquery.

```sql
SELECT *
FROM products
WHERE price > ANY (
    SELECT price
    FROM products
    WHERE category = 'Mobile'
);
```

```text
ANY → condition matches at least one value
```

## 9. ALL

Compares a value with all values returned by a subquery.

```sql
SELECT *
FROM products
WHERE price > ALL (
    SELECT price
    FROM products
    WHERE category = 'Mobile'
);
```

```text
ALL → condition must match every value
```

## 10. Concatenation `||`

Combines text values in PostgreSQL.

```sql
SELECT first_name || ' ' || last_name AS full_name
FROM users;
```

Example:

```text
Mohammed + Sirajuddin
→ Mohammed Sirajuddin
```

# 🔥 Most Important Operators for Beginners

Learn these first:

```text
=
!=
<>
>
<
>=
<=

AND
OR
NOT

+
-
*
/
%

BETWEEN
IN
LIKE
IS NULL
```

# 🧠 Easy Memory Trick

```text
Compare   → =  !=  >  <  >=  <=
Combine   → AND  OR  NOT
Calculate → +  -  *  /  %
Search    → LIKE  IN  BETWEEN
Missing   → IS NULL
```

# Example Using Multiple Operators

```sql
SELECT *
FROM products
WHERE price >= 30000
AND price <= 70000
AND category IN ('Laptop', 'Mobile')
AND name LIKE '%Pro%';
```

This means:

```text
Price: 30,000 to 70,000
AND
Category: Laptop or Mobile
AND
Name contains "Pro"
```

# Quick Difference

```text
Operator → works with values/conditions
Clause   → structures the SQL query
```

Example:

```sql
SELECT *
FROM products
WHERE price > 50000;
```

Here:

```text
SELECT → Clause
FROM   → Clause
WHERE  → Clause
>      → Operator
```
