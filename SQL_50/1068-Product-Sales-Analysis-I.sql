SELECT product_name, Year, price
FROM Product p 
JOIN Sales s
ON p.product_id = s.product_id;