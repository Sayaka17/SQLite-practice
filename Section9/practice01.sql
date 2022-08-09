-- ordersテーブルのcustomer_idを基準に
SELECT *
FROM order_details
WHERE order_details.price >= 1500
;