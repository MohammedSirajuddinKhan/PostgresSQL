# SQL ALTER TABLE — Beginner Reference

> `ALTER TABLE` is used to change the structure of an existing table.

---

## 1. Add a Column

```sql
ALTER TABLE users
ADD COLUMN age INT;
```

Adds a new `age` column.

---

## 2. Rename a Column

```sql
ALTER TABLE users
RENAME COLUMN age TO user_age;
```

Changes `age` → `user_age`.

---

## 3. Change Column Type

```sql
ALTER TABLE users
ALTER COLUMN user_age TYPE BIGINT;
```

Changes the data type.

---

## 4. Set a DEFAULT Value

```sql
ALTER TABLE users
ALTER COLUMN user_age SET DEFAULT 18;
```

New rows will use `18` when no age is provided.

---

## 5. Remove DEFAULT

```sql
ALTER TABLE users
ALTER COLUMN user_age DROP DEFAULT;
```

Removes the default value.

---

## 6. Add a Constraint

```sql
ALTER TABLE users
ADD CONSTRAINT age_check CHECK (user_age >= 18);
```

Adds a rule to the table.

---

## 7. Drop a Column

```sql
ALTER TABLE users
DROP COLUMN user_age;
```

Deletes the column.

⚠️ The data in that column is also deleted.

---

## 8. Rename a Table

```sql
ALTER TABLE users
RENAME TO customers;
```

Changes the table name.

---

# 🔥 Cheat Sheet

| Task | Command |
|---|---|
| Add column | `ADD COLUMN` |
| Rename column | `RENAME COLUMN` |
| Change type | `ALTER COLUMN ... TYPE` |
| Add default | `SET DEFAULT` |
| Remove default | `DROP DEFAULT` |
| Add constraint | `ADD CONSTRAINT` |
| Delete column | `DROP COLUMN` |
| Rename table | `RENAME TO` |

---

# 🧠 Easy Memory Trick

```text
ALTER TABLE
     ↓
Change existing table
     ↓
ADD       → Add
RENAME    → Rename
ALTER     → Change
SET       → Add default
DROP      → Remove
```

### Example

```sql
ALTER TABLE users
ADD COLUMN email VARCHAR(100);
```

Think:

**ALTER TABLE = "I already have a table, but I want to change it."**
