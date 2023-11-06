-- Write a SQL query to retrieve all the customer information along with the total number of orders placed by each customer. Display the result in descending order of the number of orders.

SELECT
customer_id,
customer_name,
Count(order_id) As total_orders
FROM customers
LEFT
JOIN orders ON Customers.customer_id = orders.customer_id
GROUP BY customer_id
ORDER BY total_orders DESC;