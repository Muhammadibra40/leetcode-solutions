# Write your MySQL query statement below
SELECT  M.employee_id,
        M.name,
        COUNT(E.reports_to) AS reports_count,
        ROUND(SUM(E.age) / COUNT(E.reports_to)) AS average_age 
FROM employees M
JOIN employees E ON M.employee_id = E.reports_to
GROUP BY M.employee_id
ORDER BY M.employee_id;