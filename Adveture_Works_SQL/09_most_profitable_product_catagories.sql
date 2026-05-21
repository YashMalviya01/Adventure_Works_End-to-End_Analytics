SELECT
    product_category_name,

    ROUND(SUM(revenue)::numeric,2) AS total_revenue,

    ROUND(SUM(profit)::numeric,2) AS total_profit,

    ROUND(AVG(profit_margin_pct)::numeric,2) AS avg_profit_margin

FROM fact_sales

GROUP BY product_category_name

ORDER BY total_profit DESC;