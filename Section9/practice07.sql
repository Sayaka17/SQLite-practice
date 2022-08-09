-- 3つのテーブルを内部結合してpriceで順番並び替え, 演習8で条件指定

SELECT orders.id AS order_id, orders.customer_id, customer.customer_name, customer.address, order_details.item_name, order_details.price, order_details.quantity
FROM orders
INNER JOIN customer
ON orders.customer_id = order_details.id
INNER JOIN order_details
ON orders.customer_id = customer.id
WHERE price >= 1000 AND price <= 4000
ORDER BY price DESC
;