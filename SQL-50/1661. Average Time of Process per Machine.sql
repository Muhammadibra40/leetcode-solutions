# Write your MySQL query statement below
WITH machines_start_time AS (SELECT  machine_id, 
        process_id,
        timestamp as start_time
FROM Activity
WHERE activity_type = 'start'
),
machines_end_time AS (SELECT  machine_id, 
        process_id,
        timestamp as end_time
FROM Activity
WHERE activity_type = 'end'
),
conclusion_query AS (
SELECT  ms.machine_id,
        ms.process_id,
        start_time,
        end_time,
        (end_time - start_time) AS total_rpocess_time
FROM machines_start_time ms
JOIN machines_end_time me
ON ms.machine_id = me.machine_id AND ms.process_id = me.process_id
)
SELECT  machine_id,
        ROUND((SUM(total_rpocess_time) / COUNT(process_id)), 3) AS processing_time
FROM conclusion_query
GROUP BY machine_id

