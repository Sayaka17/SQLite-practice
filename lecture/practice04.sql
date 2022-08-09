-- データの集計
SELECT price, price*2 AS price_x2
FROM orders
LIMIT 5;

SELECT price, price*2 AS price_x2, (price+100) * 0.05 AS price_prac
FROM orders
LIMIT 5;

-- 集計関数
SELECT COUNT(price) AS price_count
FROM orders
LIMIT 5;

SELECT SUM(price) AS price_sum
FROM orders
LIMIT 5;

SELECT AVG(price) AS avg_sum
FROM orders
LIMIT 5;

SELECT MAX(price) AS price_max, MIN(payment_date)
FROM orders
LIMIT 5;

-- 重複なしのデータ抽出（DISTINCT, GROUP BY）
-- DISTINCT 選択した結果から単純に重複を除外したいとき, ()の中に書くよ
SELECT COUNT(DISTINCT customer_id)
FROM orders
LIMIT 5; -- 4が返ってくる

SELECT DISTINCT item
FROM order_details
LIMIT 5; -- バッグ・帽子・ジャケット

-- GROUP BY 選択した結果から重複を除外した上で、なにかを集計したいとき
SELECT item, SUM(quantity)
FROM order_details
GROUP BY item
LIMIT 5; 
-- itemごとのquantity合計値が返ってくる

SELECT item, SUM(quantity)
FROM order_details
WHERE item="帽子"
GROUP BY item
LIMIT 5;

-- HAVING グループ化したものに対して条件抽出するときに使用する
/* 
<文法>
SELECT カラム名
FROM テーブル名
GROUP BY レコード数
HAVING グループに対する条件

<WHEREとHAVINGの違い>
WHERE: レコードに対してのみ条件抽出を行う
HAVING: グループ化されたデータに対してさらに条件抽出を行う
※呼ばれるタイミングが違うだけ('ω')ノ
 */
 SELECT item, SUM(quantity) AS quantity_sum
 FROM order_details
 GROUP BY item
 HAVING quantity_sum > 1
 LIMIT 5; -- バッグ：2, 帽子：2

 SELECT item, SUM(quantity) AS quantity_sum
 FROM order_details
 WHERE item <> "帽子"
 GROUP BY item
 HAVING quantity_sum > 1
 LIMIT 5; -- バッグ：2だけ