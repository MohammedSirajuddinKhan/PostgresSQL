# SQL Aggregation Functions — Beginner Reference

> Aggregate functions take many rows and return one result.

Example table: `products`

| id | name | price | stock |
|---|---|---:|---:|
| 1 | Laptop | 50000 | 10 |
| 2 | Mobile | 30000 | 20 |
| 3 | Tablet | 40000 | 15 |

---

## 1. COUNT()

Counts rows or values.

Count all products:

```sql
SELECT COUNT(*)
FROM products;
```

Count values in a column:

```sql
SELECT COUNT(price)
FROM products;
```

`COUNT(*)` counts rows, while `COUNT(column)` ignores `NULL` values.

---

## 2. SUM()

Adds numeric values.

```sql
SELECT SUM(price)
FROM products;
```

Example:

```text
50000 + 30000 + 40000 = 120000
```

---

## 3. AVG()

Finds the average of numeric values.

```sql
SELECT AVG(price)
FROM products;
```

Example:

```text
120000 / 3 = 40000
```

---

## 4. MAX()

Finds the highest value.

```sql
SELECT MAX(price)
FROM products;
```

Result:

```text
50000
```

---

## 5. MIN()

Finds the lowest value.

```sql
SELECT MIN(price)
FROM products;
```

Result:

```text
30000
```

---

# Using Aggregation with AS

Give the result a readable name:

```sql
SELECT
    COUNT(*) AS total_products,
    SUM(price) AS total_price,
    AVG(price) AS average_price,
    MAX(price) AS highest_price,
    MIN(price) AS lowest_price
FROM products;
```

---

# Aggregation with GROUP BY

You can calculate results separately for each group.

Example:

```sql
SELECT category, COUNT(*)
FROM products
GROUP BY category;
```

Result:

```text
Laptop   5
Mobile   8
Tablet   3
```

You can also use other aggregate functions:

```sql
SELECT
    category,
    COUNT(*) AS total_products,
    AVG(price) AS average_price,
    MAX(price) AS highest_price,
    MIN(price) AS lowest_price
FROM products
GROUP BY category;
```

---

# Aggregation with WHERE

`WHERE` filters rows **before** aggregation.

```sql
SELECT AVG(price)
FROM products
WHERE category = 'Laptop';
```

This calculates the average price only for laptops.

---

# Aggregation with HAVING

`HAVING` filters groups **after** aggregation.

```sql
SELECT category, COUNT(*) AS total
FROM products
GROUP BY category
HAVING COUNT(*) > 5;
```

This shows only categories having more than 5 products.

### WHERE vs HAVING

```text
WHERE  → filters rows
HAVING → filters groups
```

---

# NULL and Aggregate Functions

Most aggregate functions ignore `NULL` values.

For example:

```sql
SELECT AVG(price)
FROM products;
```

If one product has `price = NULL`, that row is not included in the average.

`COUNT(*)` is different:

```sql
COUNT(*)
```

counts rows, including rows containing `NULL`.

But:

```sql
COUNT(price)
```

counts only rows where `price` is not `NULL`.

---

# 🔥 Beginner Cheat Sheet

| Function | Purpose |
|---|---|
| `COUNT()` | Count rows/values |
| `SUM()` | Add values |
| `AVG()` | Calculate average |
| `MAX()` | Highest value |
| `MIN()` | Lowest value |

---

# 🧠 Easy Memory Trick

```text
COUNT → How many?
SUM   → Total?
AVG   → Average?
MAX   → Highest?
MIN   → Lowest?
```

---

# Real Example

Find the number of products and their average price for each category:

```sql
SELECT
    category,
    COUNT(*) AS total_products,
    AVG(price) AS average_price
FROM products
GROUP BY category;
```

Think:

```text
GROUP BY → Make groups
COUNT    → How many?
AVG      → Average?
SUM      → Total?
MAX      → Highest?
MIN      → Lowest?
```
