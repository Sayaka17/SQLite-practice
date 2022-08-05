-- <データの抽出>
-- SELECT AS：データを選択して、カラム名を変えている
SELECT id AS order_id, price AS price_jpy
FROM orders;

-- LIMIT：抽出するデータ数を絞り込む, データ数が多すぎると処理ができないので制限するために使う
SELECT *
FROM orders
LIMIT 2, 4;

-- ORDER BY: 並び替え
SELECT * 
FROM orders
ORDER BY price DESC --降順
LIMIT 5;

-- WHERE: 条件指定
SELECT *
FROM order_details
WHERE item="バッグ"
LIMIT 3;

-- 演算子：NOT EQUAL = <>
SELECT *
FROM orders 
WHERE price <>3000
LIMIT 5;

SELECT *
FROM orders 
WHERE payment_date > '2021-02-01'
LIMIT 5;

-- 論理演算子
SELECT *
FROM order_details
WHERE (item='バッグ' OR quantity >= 1) AND order_id=4
LIMIT 5;

SELECT *
FROM orders
WHERE price IS NULL
LIMIT 5;

SELECT *
FROM orders
WHERE price IS NOT NULL
LIMIT 5;