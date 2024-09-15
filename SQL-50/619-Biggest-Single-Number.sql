# Write your MySQL query statement below
SELECT COALESCE(MAX(num), null) AS num 
FROM (  SELECT num
        FROM MyNumbers
        GROUP BY num
        HAVING COUNT(num) = 1) AS singleNums;
