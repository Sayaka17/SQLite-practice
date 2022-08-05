-- <データ抽出>条件分岐
-- CASE文
SELECT *,
CASE
	WHEN price > 10000 THEN 'High'
	WHEN price <= 10000 THEN 'Low'
	ELSE 'Other'
END AS price_level
FROM orders;