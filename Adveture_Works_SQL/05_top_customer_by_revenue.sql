WITH customer_sales AS (

    SELECT
        customerid,

        ROUND( SUM(revenue)::numeric,2) AS customer_revenue,

        ROUND(SUM(profit)::numeric,2) AS customer_profit,

        COUNT(DISTINCT salesorderid) AS total_orders

    FROM fact_sales

    GROUP BY customerid
)
SELECT
    customerid,
    customer_revenue,
    customer_profit,
    total_orders,

    RANK() OVER(ORDER BY customer_revenue DESC) AS customer_rank

FROM customer_sales

LIMIT 10;
