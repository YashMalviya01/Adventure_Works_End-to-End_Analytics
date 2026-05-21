WITH monthly_revenue AS (
    SELECT
        order_year,
        order_month,
        ROUND(SUM(revenue)::numeric,2) AS monthly_revenue

    FROM fact_sales

    GROUP BY
        order_year,
        order_month
)

SELECT
    order_year,
    order_month,
    monthly_revenue,
     ROUND(SUM(monthly_revenue)OVER(ORDER BY order_year, order_month)::numeric,2) AS cumulative_revenue

FROM monthly_revenue;
