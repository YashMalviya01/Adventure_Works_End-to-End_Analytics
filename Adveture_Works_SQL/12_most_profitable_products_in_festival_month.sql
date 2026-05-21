-- Holiday & Festival Profitability Analysis
-- With Most Ordered Product Categories

WITH holiday_sales AS (

    SELECT
        order_year,
        order_month,
        order_month_name,

        product_category_name,

        SUM(orderqty) AS total_quantity_sold,

        ROUND(SUM(revenue)::numeric,2) AS total_revenue,

        ROUND(SUM(profit)::numeric,2) AS total_profit

    FROM fact_sales

    GROUP BY
        order_year,
        order_month,
        order_month_name,
        product_category_name
)

SELECT
    order_year,

    order_month_name,

    product_category_name,

    total_quantity_sold,

    total_revenue,

    total_profit,

    CASE

        WHEN order_month = 1
            THEN 'New Year Season'

        WHEN order_month = 2
            THEN 'Valentine Season'

        WHEN order_month = 3
            THEN 'St. Patrick & Easter Preparation'

        WHEN order_month = 4
            THEN 'Easter & Good Friday'

        WHEN order_month = 10
            THEN 'Halloween Season'

        WHEN order_month = 11
            THEN 'Thanksgiving Season'

        WHEN order_month = 12
            THEN 'Christmas Season'

        ELSE 'Regular Retail Period'

    END AS holiday_period

FROM holiday_sales

WHERE product_category_name IS NOT NULL

ORDER BY
    total_quantity_sold DESC,
    total_profit DESC;