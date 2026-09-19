# SQL CASE — Beginner Reference

> `CASE` is used to add conditional logic (if-then-else) inside SQL queries.

---

## 1. Simple CASE

```sql
SELECT name,
       CASE department
           WHEN 'IT' THEN 'Technology'
           WHEN 'HR' THEN 'Human Resources'
           ELSE 'Other'
       END AS department_name
FROM employees;
```

Checks a single column against fixed values.

---

## 2. Searched CASE

```sql
SELECT name, salary,
       CASE
           WHEN salary >= 100000 THEN 'High'
           WHEN salary >= 50000  THEN 'Medium'
           ELSE 'Low'
       END AS salary_level
FROM employees;
```

Uses full conditions (`WHEN ...`). Most commonly used form.

---

## 3. CASE with Multiple Conditions

```sql
SELECT name, age,
       CASE
           WHEN age < 18 THEN 'Minor'
           WHEN age BETWEEN 18 AND 60 THEN 'Adult'
           ELSE 'Senior'
       END AS age_group
FROM users;
```

You can use any valid condition inside `WHEN`.

---

## 4. CASE Inside Aggregate Functions

```sql
SELECT
    COUNT(CASE WHEN status = 'Active' THEN 1 END) AS active_users,
    COUNT(CASE WHEN status = 'Inactive' THEN 1 END) AS inactive_users
FROM users;
```

Useful for conditional counting / summing.

---

## 5. CASE in ORDER BY

```sql
SELECT name, status
FROM users
ORDER BY
    CASE status
        WHEN 'Active' THEN 1
        WHEN 'Pending' THEN 2
        ELSE 3
    END;
```

Controls custom sorting order.

---

## 6. CASE in UPDATE

```sql
UPDATE employees
SET salary = CASE
    WHEN performance = 'Excellent' THEN salary * 1.20
    WHEN performance = 'Good' THEN salary * 1.10
    ELSE salary
END;
```

Updates values based on conditions.

---

## 7. Nested CASE

```sql
SELECT name, score,
       CASE
           WHEN score >= 90 THEN 'A'
           WHEN score >= 80 THEN
               CASE
                   WHEN attendance > 90 THEN 'B+'
                   ELSE 'B'
               END
           ELSE 'C'
       END AS grade
FROM students;
```

You can put a `CASE` inside another `CASE`.

---

## 8. CASE with NULL Handling

```sql
SELECT name,
       CASE
           WHEN phone IS NULL THEN 'No Phone'
           ELSE phone
       END AS contact
FROM users;
```

A clean way to replace `NULL` values.

---

# 🔥 Cheat Sheet

```
| Task                    | Pattern                              |
| ----------------------- | ------------------------------------ |
| Simple match            | `CASE col WHEN value THEN ...`       |
| Condition-based         | `CASE WHEN condition THEN ...`       |
| Default value           | `ELSE value`                         |
| End the expression      | `END`                                |
| Conditional count       | `COUNT(CASE WHEN ... THEN 1 END)`    |
| Conditional sum         | `SUM(CASE WHEN ... THEN amount END)` |
| Custom sort             | Use in `ORDER BY`                    |
| Conditional update      | Use in `UPDATE ... SET`            |
```

---

# 🧠 Easy Memory Trick

```text
CASE
↓
WHEN → condition
THEN → result if true
ELSE → result if false (optional)
END  → finish
```

### Example

```sql
SELECT name,
       CASE
           WHEN age >= 18 THEN 'Adult'
           ELSE 'Minor'
       END AS status
FROM users;
```

Think:

**CASE = "If this is true, show this… otherwise show that."**
```
