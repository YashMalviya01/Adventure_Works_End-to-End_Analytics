WITH territory_performance AS (

    SELECT
        dt.name AS territory_name,
        dt.countryregioncode,

        ROUND(SUM(fs.revenue)::numeric,2) AS territory_revenue,

        ROUND(SUM(fs.profit)::numeric,2) AS territory_profit

    FROM fact_sales fs

    LEFT JOIN dim_territory dt ON fs.territoryid = dt.territoryid
 GROUP BY
        dt.name,
        dt.countryregioncode
)

SELECT
    territory_name,
    countryregioncode,
    territory_revenue,
    territory_profit,

    DENSE_RANK() OVER(ORDER BY territory_revenue DESC) AS territory_rank

FROM territory_performance;

