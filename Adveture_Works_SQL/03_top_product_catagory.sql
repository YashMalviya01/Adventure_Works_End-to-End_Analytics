WITH category_sales AS (

    SELECT
        dp.product_category_name,

        ROUND(SUM(fs.revenue)::numeric,2) AS total_revenue,

        ROUND(SUM(fs.profit)::numeric,2) AS total_profit

    FROM fact_sales fs

    LEFT JOIN dim_product dp ON fs.productid = dp.productid

    GROUP BY
        dp.product_category_name
)

SELECT
    cs.product_category_name,
    cs.total_revenue,
    cs.total_profit,

    RANK() OVER(ORDER BY cs.total_revenue DESC) AS revenue_rank

FROM category_sales cs;