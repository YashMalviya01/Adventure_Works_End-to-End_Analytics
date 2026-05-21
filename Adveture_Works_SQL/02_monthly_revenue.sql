
WITH monthly_sales AS (

    SELECT
        order_year,
        order_month,
        order_month_name,

        ROUND(
            SUM(revenue)::numeric, 2) AS monthly_revenue

    FROM fact_sales

    GROUP BY
        order_year,
        order_month,
        order_month_name
)

SELECT
    ms.order_year,
    ms.order_month,
    ms.order_month_name,
    ms.monthly_revenue,

    ROUND( LAG(ms.monthly_revenue) OVER (ORDER BY ms.order_year, ms.order_month)::numeric,2) AS previous_month_revenue,

    ROUND((ms.monthly_revenue - LAG(ms.monthly_revenue) OVER(ORDER BY ms.order_year, ms.order_month))::numeric,2) AS revenue_growth

FROM monthly_sales ms

ORDER BY
    ms.order_year,
    ms.order_month;