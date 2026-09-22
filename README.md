# 🗄️ SQL Data Analysis

A SQL portfolio project demonstrating how SQL can be used to analyze employee and department data and answer business-related questions.

## 🎯 Project Objective

The objective of this project is to demonstrate practical SQL skills used in Data Analyst roles, from basic data retrieval to advanced analytical queries.

## 🛠️ SQL Skills Demonstrated

- SELECT & WHERE
- GROUP BY & HAVING
- Aggregate Functions
- INNER JOIN
- Subqueries
- Common Table Expressions (CTEs)
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- Window Functions

## 📊 Analysis Performed

✔ Employee salary analysis  
✔ Department-wise salary analysis  
✔ Highest & second-highest salary  
✔ Employees earning above average salary  
✔ Employee and department joins  
✔ Salary ranking  
✔ Department-level employee ranking  
✔ Total and average salary calculations  

## 📁 Project Files

| File | Description |
|---|---|
| `employee_analysis.sql` | SQL queries covering basic to advanced analysis |

## 💡 Example Business Question

**Which employees earn more than the company's average salary?**

```sql
SELECT empname, sal
FROM emp
WHERE sal > (
    SELECT AVG(sal)
    FROM emp
);
