-- # Write your MySQL query statement below
-- SELECT  user_id,
--         COUNT(user_id)/COUNT(numConfirms)
-- FROM    (SELECT c.user_id, 
--                 SUM(CASE 
--                         WHEN c.action = 'confirmed' THEN 1
--                         ELSE 0
--                 END) AS numConfirms
--         FROM Signups s
--         JOIN Confirmations c
--         ON s.user_id = c.user_id
--         GROUP BY c.user_id) AS coinfirmT
-- JOIN confirmations
-- USING(user_id);

select  s.user_id, 
        ifnull(round(sum(action = 'confirmed') / count(*), 2), 0.00) as confirmation_rate
from Signups s
left join Confirmations c
on s.user_id = c.user_id
group by s.user_id;


