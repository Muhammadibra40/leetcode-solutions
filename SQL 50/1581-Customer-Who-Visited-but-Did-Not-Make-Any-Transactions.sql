-- SELECT customer_id, COUNT(t.visit_id) AS count_no_trans
-- FROM Visits v LEFT JOIN Transactions t
-- ON v.visit_id = t.visit_id 
-- GROUP BY t.visit_id
-- HAVING t.transaction_id IS NOT NULL;

-- SELECT v.customer_id, COUNT(t.visit_id) AS count_no_trans
-- FROM Visits v
-- LEFT JOIN Transactions t
-- ON v.visit_id = t.visit_id 
-- GROUP BY t.visit_id
-- WHERE t.transaction_id IS NULL;

SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id 
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
