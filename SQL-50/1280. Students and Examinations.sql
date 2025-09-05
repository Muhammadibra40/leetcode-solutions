# Write your MySQL query statement below
SELECT  
        s.student_id,
        s.student_name,
        su.subject_name,
        count(e.student_id) AS attended_exams
FROM Students  s
CROSS JOIN Subjects su
LEFT JOIN Examinations e
on (su.subject_name = e.subject_name AND     s.student_id = e.student_id)
group by s.student_id, s.student_name, su.subject_name
ORDER by  s.student_id, su.subject_name
