WITH rpts_no AS(SELECT  manager.name,
        COUNT(employee.id) AS reports_no
from Employee employee
JOIN Employee manager
ON employee.managerID = manager.id
GROUP BY manager.id, manager.name)
SELECT name
FROM rpts_no
WHERE reports_no >= 5
