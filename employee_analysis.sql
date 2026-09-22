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
