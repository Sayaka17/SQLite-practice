-- orders customer を内部結合
SELECT orders.id AS order_id, orders.customer_id, customer.customer_name, customer.address
FROM orders
INNER JOIN customer
ON orders.customer_id = customer.id
;