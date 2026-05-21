SELECT

    CASE WHEN is_online_order = 1 THEN 'Online Sales'

        ELSE 'Offline Sales'
    END AS sales_channel,

    ROUND(SUM(revenue)::numeric,2) AS total_revenue,

    ROUND(SUM(profit)::numeric,2) AS total_profit,

    COUNT(DISTINCT salesorderid) AS total_orders

FROM fact_sales

GROUP BY sales_channel;