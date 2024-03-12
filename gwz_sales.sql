SELECT

ROUND(SAFE_DIVIDE(SUM(turnover),COUNT(DISTINCT(date_date))),2) AS daily_turnover

FROM course16v1.gwz_sales

--Write a query to obtain the daily turnover.