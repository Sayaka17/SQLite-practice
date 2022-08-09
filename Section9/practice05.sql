
SELECT category, price, payment_date, SUM(quantity) as total_q
FROM order_details
GROUP BY category
;