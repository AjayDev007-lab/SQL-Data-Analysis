-- =====================================================
-- SQL DATA ANALYSIS PORTFOLIO
-- Author: Ajay Dev
-- =====================================================

-- 1. View all employee records
SELECT *
FROM emp;

-- 2. Find employees with salary greater than 2000
SELECT empname, sal
FROM emp
WHERE sal > 2000;

-- 3. Calculate average salary by department
SELECT deptno, AVG(sal) AS average_salary
FROM emp
GROUP BY deptno;

-- 4. Find the highest salary in each department
SELECT deptno, MAX(sal) AS highest_salary
FROM emp
GROUP BY deptno;

-- 5. Display employees with their department names
SELECT 
    e.empname,
    e.job,
    e.sal,
    d.deptname
FROM emp e
JOIN dept d
    ON e.deptno = d.deptno;

-- 6. Find the second highest salary
SELECT MAX(sal) AS second_highest_salary
FROM emp
WHERE sal < (SELECT MAX(sal) FROM emp);


-- 7. Rank employees based on salary
SELECT
    empname,
    sal,
    RANK() OVER (ORDER BY sal DESC) AS salary_rank
FROM emp;


-- 8. Dense rank employees based on salary
SELECT
    empname,
    sal,
    DENSE_RANK() OVER (ORDER BY sal DESC) AS salary_rank
FROM emp;


-- 9. Rank employees within each department
SELECT
    empname,
    deptno,
    sal,
    ROW_NUMBER() OVER (
        PARTITION BY deptno
        ORDER BY sal DESC
    ) AS department_rank
FROM emp;


-- 10. Find employees earning above average salary
SELECT empname, sal
FROM emp
WHERE sal > (
    SELECT AVG(sal)
    FROM emp
);


-- 11. Use a CTE to find high-salary employees
WITH HighSalaryEmployees AS (
    SELECT empname, job, sal, deptno
    FROM emp
    WHERE sal > 2000
)
SELECT *
FROM HighSalaryEmployees;


-- 12. Find department-wise total and average salary
SELECT
    deptno,
    COUNT(*) AS employee_count,
    SUM(sal) AS total_salary,
    AVG(sal) AS average_salary
FROM emp
GROUP BY deptno;
