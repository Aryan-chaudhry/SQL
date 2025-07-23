
# 📘 SQL Commands & Concepts

This guide includes categorized SQL command types, key concepts, and commonly asked interview questions with code examples. Perfect for revision or interview preparation!

---

## 📂 Types of SQL Commands

### 1. **DDL** – *Data Definition Language*
> Used to define and manage database schema.

- `CREATE` – Create new tables/databases
- `ALTER` – Modify existing schema
- `DROP` – Remove database objects
- `TRUNCATE` – Delete all rows from a table
- `RENAME` – Rename database objects

---

### 2. **DQL / DRL** – *Data Query / Retrieval Language*
> Used to fetch/query data from a database.

- `SELECT` – Retrieve records from one or more tables

---

### 3. **DML** – *Data Manipulation Language*
> Used for managing data within schema objects.

- `INSERT` – Add new data
- `UPDATE` – Modify existing data
- `DELETE` – Remove data

---

### 4. **DCL** – *Data Control Language*
> Manage access rights and permissions.

- `GRANT` – Give access rights
- `REVOKE` – Remove access rights

---

### 5. **TCL** – *Transaction Control Language*
> Manage transactions in SQL.

- `COMMIT` – Save changes permanently
- `ROLLBACK` – Undo changes
- `SAVEPOINT` – Set a point to rollback to
- `SET TRANSACTION` – Define transaction characteristics

---

## 🧠 Popular Interview Questions

### 1. Can we use `SELECT` without a `FROM` clause?

✅ **Yes**, using the dummy **DUAL** table (in MySQL, Oracle).

```sql
SELECT 55 + 11;
SELECT NOW();
SELECT UCASE('hello');
```

---

### 2. 🔍 Find employees whose names contain character 'V'

📌 *Pattern Searching*

```sql
SELECT * FROM employees WHERE name LIKE '%V%';
```

📁 See: `DQL > Pattern_Searching.sql`

---

### 3. 📊 Find average salary per department

📌 *Data Grouping using `GROUP BY`*

```sql
SELECT department, AVG(salary) AS avg_salary 
FROM employees 
GROUP BY department;
```

📁 See: `DQL > dataGrouping.sql`

❓ *Can I group without aggregation functions?*  
Yes – it works similarly to `DISTINCT`.

---

### 4. Can a **Foreign Key** have `NULL` values?

✅ **Yes**, especially when using:

- `ON DELETE SET NULL` → Sets foreign key to `NULL` if parent is deleted.
- `ON DELETE CASCADE` → Deletes matching child rows when parent is deleted.

---

### 5. 🆚 `REPLACE` vs `UPDATE`

- `REPLACE`: Adds a new row if not found, otherwise deletes and inserts.
- `UPDATE`: Only modifies existing rows.

---

## 🔗 SQL Joins

> Joins are used to combine rows from two or more tables based on related columns.

---

### 🔹 INNER JOIN

```sql
SELECT emp.name, dept.name 
FROM employees AS emp 
INNER JOIN departments AS dept 
ON emp.dept_id = dept.id;
```

---

### 🔸 LEFT JOIN

```sql
SELECT emp.name, dept.name 
FROM employees AS emp 
LEFT JOIN departments AS dept 
ON emp.dept_id = dept.id;
```

---

### 🔸 RIGHT JOIN

```sql
SELECT emp.name, dept.name 
FROM employees AS emp 
RIGHT JOIN departments AS dept 
ON emp.dept_id = dept.id;
```

---

### 🔸 FULL OUTER JOIN *(Simulated in MySQL with UNION)*

```sql
SELECT emp.name, dept.name 
FROM employees AS emp 
LEFT JOIN departments AS dept 
ON emp.dept_id = dept.id

UNION

SELECT emp.name, dept.name 
FROM employees AS emp 
RIGHT JOIN departments AS dept 
ON emp.dept_id = dept.id;
```

---

### 🔸 CROSS JOIN

```sql
SELECT emp.name, dept.name 
FROM employees AS emp 
CROSS JOIN departments AS dept;
``` 

---

### 🔸 SELF JOIN

```sql
SELECT A.name AS Employee, B.name AS Manager 
FROM employees AS A
JOIN employees AS B 
ON A.manager_id = B.id;
```

## Triggers

### What is Triggers

```
A trigger is a set of SQL statements that automatically executes when a specific event (INSERT, UPDATE, DELETE) occurs on a table or view in the database.
```

### Type of Triggers Table
```
| 🔢 No | 🛠️ Trigger Type | 📂 Trigger Name          | 🧹 Drop Command                                  |
| ----- | ---------------- | ------------------------ | ------------------------------------------------ |
| 1     | BEFORE INSERT    | `before_insert_employee` | `DROP TRIGGER IF EXISTS before_insert_employee;` |
| 2     | AFTER INSERT     | `after_insert_employee`  | `DROP TRIGGER IF EXISTS after_insert_employee;`  |
| 3     | BEFORE UPDATE    | `before_update_employee` | `DROP TRIGGER IF EXISTS before_update_employee;` |
| 4     | AFTER UPDATE     | `after_update_employee`  | `DROP TRIGGER IF EXISTS after_update_employee;`  |
| 5     | BEFORE DELETE    | `before_delete_employee` | `DROP TRIGGER IF EXISTS before_delete_employee;` |
| 6     | AFTER DELETE     | `after_delete_employee`  | `DROP TRIGGER IF EXISTS after_delete_employee;`  |

```

### syntax of Trigger

```
CREATE TRIGGER trigger_name
{BEFORE | AFTER} {INSERT | UPDATE | DELETE}
ON table_name
FOR EACH ROW
BEGIN
   -- Trigger logic here
END;
```

### common SQL States
```

| **Class** | **Meaning**                           | **Examples**                |
| --------- | ------------------------------------- | --------------------------- |
| `00`      | Successful completion                 | `00000` (success)           |
| `01`      | Warning                               | `01000` (general warning)   |
| `02`      | No data (not found)                   | `02000`                     |
| `22`      | Data exception                        | `22003` (numeric overflow)  |
| `23`      | Integrity constraint violation        | `23000` (foreign key fails) |
| `28`      | Invalid authorization                 | `28000`                     |
| `40`      | Transaction rollback                  | `40001` (deadlock)          |
| `42`      | Syntax error or access rule violation | `42000` (syntax error)      |
| `45`      | User-defined exception (MySQL)        | `45000` (used in `SIGNAL`)  |
```

