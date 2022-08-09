-- order_detailsから購入合計金額を計算し、total_amountという列としてorder_detailsテーブルの一案右に表示
SELECT *,  price * quantity AS total_amount
FROM order_details
;