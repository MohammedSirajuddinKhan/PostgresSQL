# SQL String Functions — Beginner Reference

> String functions are used to work with text values in SQL.

## 1. UPPER()

Converts text to uppercase.

```sql
SELECT UPPER(first_name)
FROM users;
```

`Mohammed` → `MOHAMMED`

## 2. LOWER()

Converts text to lowercase.

```sql
SELECT LOWER(first_name)
FROM users;
```

`MOHAMMED` → `mohammed`

## 3. LENGTH()

Returns the number of characters.

```sql
SELECT LENGTH(first_name)
FROM users;
```

`Ali` → `3`

## 4. CONCAT()

Combines multiple values into one string.

```sql
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM users;
```

Result:

```text
Mohammed Khan
```

## 5. String Concatenation `||`

PostgreSQL also allows `||` to combine text.

```sql
SELECT first_name || ' ' || last_name AS full_name
FROM users;
```

## 6. TRIM()

Removes spaces from the beginning and end.

```sql
SELECT TRIM('  Hello  ');
```

Result:

```text
Hello
```

## 7. LTRIM()

Removes spaces from the left side.

```sql
SELECT LTRIM('   Hello');
```

## 8. RTRIM()

Removes spaces from the right side.

```sql
SELECT RTRIM('Hello   ');
```

## 9. SUBSTRING()

Gets part of a string.

```sql
SELECT SUBSTRING(first_name FROM 1 FOR 3)
FROM users;
```

`Mohammed` → `Moh`

## 10. LEFT()

Gets characters from the beginning.

```sql
SELECT LEFT(first_name, 3)
FROM users;
```

`Mohammed` → `Moh`

## 11. RIGHT()

Gets characters from the end.

```sql
SELECT RIGHT(first_name, 3)
FROM users;
```

`Mohammed` → `med`

## 12. REPLACE()

Replaces part of a string.

```sql
SELECT REPLACE('Hello World', 'World', 'SQL');
```

Result:

```text
Hello SQL
```

## 13. POSITION()

Finds the position of text inside another string.

```sql
SELECT POSITION('a' IN 'Database');
```

Returns the position where `a` first appears.

## 14. REVERSE()

Reverses a string.

```sql
SELECT REVERSE('Hello');
```

Result:

```text
olleH
```

## Using Functions Together

You can combine functions.

```sql
SELECT UPPER(TRIM(first_name))
FROM users;
```

This removes extra spaces and converts the text to uppercase.

## String Functions with WHERE

```sql
SELECT *
FROM users
WHERE LOWER(first_name) = 'mohammed';
```

## 🔥 Beginner Cheat Sheet

| Function | Purpose |
|---|---|
| `UPPER()` | Uppercase |
| `LOWER()` | Lowercase |
| `LENGTH()` | Count characters |
| `CONCAT()` | Combine text |
| `TRIM()` | Remove spaces from both sides |
| `LTRIM()` | Remove left spaces |
| `RTRIM()` | Remove right spaces |
| `SUBSTRING()` | Get part of text |
| `LEFT()` | Get text from the left |
| `RIGHT()` | Get text from the right |
| `REPLACE()` | Replace text |
| `POSITION()` | Find text position |
| `REVERSE()` | Reverse text |

## 🧠 Easy Memory Trick

```text
UPPER     → BIG letters
LOWER     → small letters
LENGTH    → How long?
CONCAT    → Combine text
TRIM      → Remove spaces
SUBSTRING → Take a part
LEFT      → Take from left
RIGHT     → Take from right
REPLACE   → Change text
POSITION  → Find text
REVERSE   → Flip text
```

## Example

Create a full name and convert it to uppercase:

```sql
SELECT UPPER(
    CONCAT(first_name, ' ', last_name)
) AS full_name
FROM users;
```

Result:

```text
MOHAMMED KHAN
ALI AHMED
```
