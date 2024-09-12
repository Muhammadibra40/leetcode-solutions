SELECT DISTINCT A.id
FROM Weather A
CROSS JOIN Weather B
WHERE A.temperature > B.temperature
AND DateDiff(A.recordDate, B.recordDate) = 1;


-- SELECT Today.id
-- FROM Weather AS Today
-- INNER JOIN Weather AS Yesterday
--   ON (DATE_SUB(Today.recordDate, INTERVAL 1 DAY) = Yesterday.recordDate)
-- WHERE Today.temperature > Yesterday.temperature;

-- select w1.id
-- from Weather w1, Weather w2
-- where w1.Temperature > w2.Temperature
-- and datediff(w1.recordDate, w2.recordDate) = 1;