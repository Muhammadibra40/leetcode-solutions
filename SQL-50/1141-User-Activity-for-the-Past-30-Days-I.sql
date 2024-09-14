# Write your MySQL query statement below
SELECT  activity_date AS day,
        COUNT(DISTINCT user_id) AS active_users
FROM activity
WHERE activity_type IN ('open_session',  'scroll_down', 'send_message', 'end_session' ) 
AND activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY day;