-- ＜データの抽出＞
-- LIKE 文字列の部分一致検索
SELECT *
FROM order_details
WHERE item
LIKE 'バ%'
LIMIT 5;

SELECT *
FROM order_details
WHERE item
LIKE '__' --2文字のレコードが抽出される
LIMIT 5;

-- BETWEEN A AND B 範囲指定でデータを抽出する。両端数字も含む(2500も入ってる)
SELECT *
FROM orders
WHERE price
BETWEEN 2500 AND 8000
LIMIT 5;


