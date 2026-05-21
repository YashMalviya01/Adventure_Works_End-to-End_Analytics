WITH monthly_holiday_sales AS (

    SELECT
        order_year,
        order_month,
        order_month_name,

        ROUND(SUM(revenue)::numeric,2) AS total_revenue,

        ROUND(SUM(profit)::numeric,2) AS total_profit

    FROM fact_sales

    GROUP BY
        order_year,
        order_month,
        order_month_name
)

SELECT
    order_year,
    order_month_name,

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

FROM monthly_holiday_sales

ORDER BY total_profit DESC;