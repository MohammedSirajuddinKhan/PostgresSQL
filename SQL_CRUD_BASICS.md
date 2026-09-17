# SQL CRUD Basics

Database: `new_db`  
Table: `students`

## 1. Connect to the Database

```sql
-- Connect to new_db
\c new_db
```

## 2. Create

### Create the `students` table

```sql
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    age INT,
    course VARCHAR(100)
);
```

### Insert a student

```sql
INSERT INTO students (name, email, age, course)
VALUES ('Sirajuddin Khan', 'siraj@example.com', 21, 'MScIT');
```

### Insert multiple students

```sql
INSERT INTO students (name, email, age, course)
VALUES
    ('Rahul Sharma', 'rahul@example.com', 22, 'MScIT'),
    ('Hinal Diwani', 'hinal@example.com', 21, 'MScIT'),
    ('Yash Patil', 'yash@example.com', 22, 'MScIT');
```

## 3. Read

### Get all students

```sql
SELECT * FROM students;
```

### Get specific columns

```sql
SELECT name, email, course
FROM students;
```

### Get a specific student

```sql
SELECT *
FROM students
WHERE id = 1;
```

### Get students from a specific course

```sql
SELECT *
FROM students
WHERE course = 'MScIT';
```

## 4. Update

### Update a student's email

```sql
UPDATE students
SET email = 'newemail@example.com'
WHERE id = 1;
```

### Update multiple fields

```sql
UPDATE students
SET age = 22,
    course = 'MScIT'
WHERE id = 1;
```

## 5. Delete

### Delete a specific student

```sql
DELETE FROM students
WHERE id = 1;
```

### Delete students from a specific course

```sql
DELETE FROM students
WHERE course = 'MScIT';
```

### Delete all records

```sql
DELETE FROM students;
```

> ⚠️ `DELETE FROM students;` removes all rows but keeps the table.

## 6. Quick CRUD Reference

| CRUD | SQL Command | Example |
|---|---|---|
| **Create** | `INSERT` | `INSERT INTO students (...) VALUES (...);` |
| **Read** | `SELECT` | `SELECT * FROM students;` |
| **Update** | `UPDATE` | `UPDATE students SET ... WHERE ...;` |
| **Delete** | `DELETE` | `DELETE FROM students WHERE ...;` |

## 7. Useful Table Commands

### View table structure

```sql
\d students
```

### Drop the table

```sql
DROP TABLE students;
```

> ⚠️ `DROP TABLE` permanently removes the table and its data.

### Recreate the table

```sql
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    age INT,
    course VARCHAR(100)
);
```
