-- 結合処理
-- 内部結合 INNER JOIN
-- ordersにorder_detailsをくっつける
SELECT orders.customer_id, orders.price, orders.payment_date, order_details.item, order_details.quantity
FROM orders
INNER JOIN order_details
ON orders.id = order_details.order_id
-- WHERE orders.price > 5000
LIMIT 5
;

-- 外部結合 LEFT OUTER JOIN ON
SELECT O.customer_id, O.price, O.payment_date, OD.item, OD.quantity
FROM orders AS O
LEFT OUTER JOIN order_details AS OD
ON O.id = OD.order_id
LIMIT 5
;

-- 交差結合　こんなのもあるよ程度でおｋ CROSS JOIN
