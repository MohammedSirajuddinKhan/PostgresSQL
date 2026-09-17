# SQL Constraints - Beginner Guide

## What are SQL Constraints?

SQL Constraints are **rules** that control what data can be stored in a table. They prevent bad data from being saved.

---

## Table Example

```sql
CREATE TABLE sql_constraints (
    ID SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email TEXT UNIQUE NOT NULL,
    created_at DATE DEFAULT NOW(),
    age INT CHECK(age >= 18)
);
```

---

## 5 Main Constraints

### 1️⃣ PRIMARY KEY

**Rule:** Each row must have a unique ID number.

```sql
ID SERIAL PRIMARY KEY
```

❌ Cannot be NULL or duplicate  
✅ Auto-increases (1, 2, 3...)

---

### 2️⃣ NOT NULL

**Rule:** This field must always have a value.

```sql
name VARCHAR(100) NOT NULL
```

❌ Cannot be empty  
✅ Must provide a value

---

### 3️⃣ UNIQUE

**Rule:** No two rows can have the same value.

```sql
email TEXT UNIQUE NOT NULL
```

❌ Cannot have duplicate emails  
✅ Each email must be different

---

### 4️⃣ DEFAULT

**Rule:** If no value given, use this default value.

```sql
created_at DATE DEFAULT NOW()
```

❌ Without this, you'd enter date every time  
✅ Automatically uses today's date

---

### 5️⃣ CHECK

**Rule:** Value must meet a condition.

```sql
age INT CHECK(age >= 18)
```

❌ Cannot insert age 17 or less  
✅ Only age 18+ allowed

---

## Simple Insert Example

### ✅ VALID (Works!)

```sql
INSERT INTO sql_constraints (name, email, age)
VALUES ('Shafiullah Khan', 'khan.mailbox123@gmail.com', '21');
```

### ❌ INVALID (Fails!)

**Missing name (NOT NULL violated):**

```sql
INSERT INTO sql_constraints (email, age)
VALUES ('test@gmail.com', '25');
-- ERROR: name cannot be NULL
```

**Duplicate email (UNIQUE violated):**

```sql
INSERT INTO sql_constraints (name, email, age)
VALUES ('Ali', 'khan.mailbox123@gmail.com', '25');
-- ERROR: email already exists
```

**Age too young (CHECK violated):**

```sql
INSERT INTO sql_constraints (name, email, age)
VALUES ('Zara', 'zara@gmail.com', '16');
-- ERROR: age must be >= 18
```

---

## Quick Reference

| Constraint  | Purpose          | Example                    |
| ----------- | ---------------- | -------------------------- |
| PRIMARY KEY | Unique ID        | `ID SERIAL PRIMARY KEY`    |
| NOT NULL    | Required field   | `name VARCHAR NOT NULL`    |
| UNIQUE      | No duplicates    | `email TEXT UNIQUE`        |
| DEFAULT     | Auto value       | `created_at DEFAULT NOW()` |
| CHECK       | Value validation | `age CHECK(age >= 18)`     |

---

## Why Use Constraints?

✅ Prevents bad data  
✅ Keeps database clean  
✅ Saves time (auto-fills defaults)  
✅ Enforces rules automatically

That's it! Constraints = Database rules. 🎯
