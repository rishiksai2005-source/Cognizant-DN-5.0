# Exercise 3 - Recursive CTE and MERGE

## Objective

Learn how to use:

- Recursive Common Table Expressions (CTEs)
- MERGE statement for data synchronization

---

## Scenario

This exercise demonstrates:

1. Generating a sequence of calendar dates using a Recursive CTE.
2. Synchronizing product data between a staging table and the main Products table using the MERGE statement.

---

## Technologies Used

- SQL Server
- T-SQL
- Visual Studio Code
- SQL Server Management Studio (SSMS)

---

## Files

- CTEAndMerge.sql
- README.md

---

## Tasks Performed

### Part 1: Recursive CTE

- Generated calendar dates from **2025-01-01** to **2025-01-31**
- Used recursive queries with `WITH`
- Controlled recursion using `MAXRECURSION`

### Part 2: MERGE Statement

- Created a `StagingProducts` table
- Inserted sample product records
- Updated existing products
- Inserted new products
- Verified the merged data

---

## SQL Concepts Covered

- Common Table Expressions (CTEs)
- Recursive Queries
- DATEADD()
- UNION ALL
- MAXRECURSION
- MERGE
- WHEN MATCHED
- WHEN NOT MATCHED

---

## Outcome

Successfully generated a calendar using a Recursive CTE and synchronized product data using the MERGE statement.

---

## Author

**Rishik Sai**