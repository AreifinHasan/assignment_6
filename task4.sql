-- Write a SQL query to retrieve the top 5 customers who have made the highest total purchase amount. Display the customer name along with the total purchase amount in descending order of the purchase amount.

SELECT
customer_name,
SUM(o.total_ammount) AS total_purchase_ammount
FROM orders o 
INNER JOIN customers c ON o.customer_id = c.customer_id
GROUP BY customer_name
ORDER BY total_purchase_ammoutn DESC
LIMIT 5;