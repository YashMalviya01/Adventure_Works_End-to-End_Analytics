
WITH product_profitability AS (

    SELECT
        product_name,

        ROUND( SUM(revenue)::numeric,2) AS total_revenue,

        ROUND(SUM(profit)::numeric,2) AS total_profit,

        ROUND(AVG(profit_margin_pct)::numeric,2) AS avg_profit_margin

    FROM fact_sales
    GROUP BY product_name
)

SELECT
    product_name,
    total_revenue,
    total_profit,
    avg_profit_margin,

    CASE
        WHEN avg_profit_margin >= 40 THEN 'High Margin'
        WHEN avg_profit_margin >= 20 THEN 'Medium Margin'
        ELSE 'Low Margin'
    END AS profit_category,

    RANK() OVER(ORDER BY total_profit DESC) AS profit_rank

FROM product_profitability

LIMIT 15;