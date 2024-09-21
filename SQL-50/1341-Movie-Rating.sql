# Write your MySQL query statement below
SELECT 
    (SELECT u.name
     FROM users u
     JOIN MovieRating mr ON u.user_id = mr.user_id
     GROUP BY u.user_id
     ORDER BY COUNT(mr.movie_id) DESC, u.name ASC
     LIMIT 1) AS results
UNION ALL
SELECT 
    (SELECT m.title
     FROM movies m
     JOIN MovieRating mr ON m.movie_id = mr.movie_id
     WHERE mr.created_at BETWEEN '2020-02-01' AND '2020-02-28'
     GROUP BY m.movie_id
     ORDER BY AVG(mr.rating) DESC, m.title ASC
     LIMIT 1) AS results;
