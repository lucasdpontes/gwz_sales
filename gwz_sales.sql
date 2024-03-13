WITH sales_price AS
(SELECT
s.turnover
,s.date_date
,s.products_id
,s.qty
,p.purchase_price
FROM course16v1.gwz_sales s
LEFT JOIN `neural-tangent-411113.course16v1. gwz_product` p
  ON s.products_id = p.products_id)

SELECT
date_date
,ROUND(SAFE_DIVIDE(SUM(turnover),COUNT(DISTINCT(date_date))),2) AS daily_turnover
,ROUND(SUM(purchase_price),2) AS purchase_cost
FROM sales_price
GROUP BY date_date