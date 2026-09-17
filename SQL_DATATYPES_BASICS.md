# SQL Data Types Basics

PostgreSQL data types define what kind of value a column can store.

Database: `new_db`

## 1. Numeric Data Types

### INTEGER (`INT`)

Stores whole numbers.

```sql
age INT
```

Example:

```sql
age INT
-- 21
-- 25
-- 100
```

### BIGINT

Stores larger whole numbers than `INT`.

```sql
views BIGINT
```

### DECIMAL / NUMERIC

Stores exact decimal numbers. Useful for prices, money, and values where precision matters.

```sql
price DECIMAL(10, 2)
```

Example:

```text
9999.99
```

- `10` = total number of digits
- `2` = digits after the decimal point

### REAL

Stores floating-point numbers with single precision.

```sql
rating REAL
```

### DOUBLE PRECISION

Stores floating-point numbers with higher precision than `REAL`.

```sql
latitude DOUBLE PRECISION
```

---

## 2. Character / Text Data Types

### VARCHAR(n)

Stores variable-length text with a maximum length.

```sql
name VARCHAR(100)
```

Example:

```text
'Sirajuddin Khan'
```

### CHAR(n)

Stores fixed-length text.

```sql
code CHAR(5)
```

Example:

```text
'IN001'
```

Usually, `VARCHAR` or `TEXT` is more convenient for general text.

### TEXT

Stores text without a specified maximum length.

```sql
description TEXT
```

Example:

```text
'Student studying MScIT'
```

---

## 3. Boolean Data Type

### BOOLEAN (`BOOL`)

Stores true/false values.

```sql
is_active BOOLEAN
```

Example:

```sql
TRUE
FALSE
```

You can also use:

```sql
is_active BOOLEAN DEFAULT TRUE
```

---

## 4. Date and Time Data Types

### DATE

Stores a date.

```sql
date_of_birth DATE
```

Example:

```text
'2004-08-15'
```

### TIME

Stores a time.

```sql
login_time TIME
```

Example:

```text
'09:30:00'
```

### TIMESTAMP

Stores date and time.

```sql
created_at TIMESTAMP
```

Example:

```text
'2026-09-17 09:30:00'
```

### TIMESTAMPTZ

Stores a timestamp with time zone handling.

```sql
created_at TIMESTAMPTZ
```

For applications and APIs, `TIMESTAMPTZ` is often a useful choice for timestamps.

---

## 5. UUID

### UUID

Stores a universally unique identifier.

```sql
user_id UUID
```

Example:

```text
550e8400-e29b-41d4-a716-446655440000
```

Useful when you don't want to expose simple sequential IDs such as `1`, `2`, `3`.

---

## 6. JSON Data Types

### JSON

Stores JSON data.

```sql
profile JSON
```

Example:

```json
{
  "name": "Sirajuddin",
  "course": "MScIT"
}
```

### JSONB

Stores JSON in a binary format optimized for querying.

```sql
profile JSONB
```

For PostgreSQL applications, `JSONB` is generally preferred when you need to query or index JSON data.

---

## 7. Arrays

PostgreSQL supports arrays as column types.

```sql
skills TEXT[]
```

Example:

```sql
ARRAY['Python', 'FastAPI', 'PostgreSQL']
```

Or:

```sql
skills TEXT[] DEFAULT '{}'
```

---

## 8. Common Data Types in a Table

Example:

```sql
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    age INT,
    cgpa DECIMAL(3, 2),
    is_active BOOLEAN DEFAULT TRUE,
    date_of_birth DATE,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    skills TEXT[]
);
```

---

## 9. Quick Data Type Reference

| Data Type | Used For | Example |
|---|---|---|
| `INT` | Whole numbers | `21` |
| `BIGINT` | Large whole numbers | `10000000000` |
| `DECIMAL` / `NUMERIC` | Exact decimals | `99.99` |
| `REAL` | Floating-point numbers | `4.5` |
| `DOUBLE PRECISION` | Higher-precision floating point | `19.876543` |
| `VARCHAR(n)` | Limited text | `'Siraj'` |
| `CHAR(n)` | Fixed-length text | `'IN001'` |
| `TEXT` | General text | `'MScIT Student'` |
| `BOOLEAN` | True/false | `TRUE` |
| `DATE` | Date | `'2026-09-17'` |
| `TIME` | Time | `'09:30:00'` |
| `TIMESTAMP` | Date + time | `'2026-09-17 09:30:00'` |
| `TIMESTAMPTZ` | Date + time with timezone handling | `'2026-09-17 09:30:00+05:30'` |
| `UUID` | Unique identifiers | `'550e8400-e29b-41d4-a716-446655440000'` |
| `JSON` | JSON data | `'{"name":"Siraj"}'` |
| `JSONB` | Queryable JSON data | `'{"name":"Siraj"}'` |
| `TEXT[]` | Array of text | `{'Python','FastAPI'}` |

---

## 10. Important PostgreSQL Types to Remember

For backend development, focus first on:

```text
INT
BIGINT
DECIMAL / NUMERIC
VARCHAR
TEXT
BOOLEAN
DATE
TIMESTAMPTZ
UUID
JSONB
ARRAY
```

You don't need to memorize every PostgreSQL data type immediately. Learn the common ones through actual database and API projects.
