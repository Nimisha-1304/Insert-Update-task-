# 📌 Task 2: Data Insertion and Handling Nulls

This task is part of a database design and manipulation exercise focused on inserting, updating, and deleting data in a Library Management System using SQL.

---

## 🎯 Objective

- Practice using `INSERT`, `UPDATE`, and `DELETE` commands.
- Handle missing data using `NULL` or default values.
- Maintain clean, consistent, and meaningful records.

---

## 🛠️ Tools Used

- MySQL Workbench
  
---

## 🗃️ Tables Involved

- `Authors`
- `Genres`
- `Books`
- `Members`
- `Borrowings`

---

## 💡 Operations Performed

### ✅ Insertions
- Added authors, books, genres, and members with real-world values.
- Used `NULL` where data was unavailable (e.g., missing phone number, ISBN).

### 🔁 Updates
- Filled missing data such as:
  - Country for authors
  - ISBN for a book
  - Email for a member

### ❌ Deletions
- Removed test/incomplete records using `WHERE` conditions with `NULL` checks.

---

## 📂 Deliverables

- `task2_data_handling.sql` — contains all `INSERT`, `UPDATE`, and `DELETE` statements.
- Sample dataset with NULLs and updated values.
- Cleaned-up data ready for queries and analysis.

---

## 🧑‍💻 Author

**Nimisha Patil**  
SQL Developer Intern @ Elevate Labs  
📧 nimishapatil1304@gmail.com

