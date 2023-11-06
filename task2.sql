-- Write a SQL query to retrieve the product name, quantity, and total amount for each order item. Display the result in ascending order of the order ID.

SELECT
p.product_name,
oi.quantity,
oi.unit_price * oi_quantity AS total_ammount
FROM order_items oi
INNER JOIN products p ON oi.product_id=p.product_id
ORDER BY oi_order_id ASC;
