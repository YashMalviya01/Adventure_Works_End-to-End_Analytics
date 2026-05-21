WITH sales_summary AS(
    SELECT 
        salesorderid,
        SUM(revenue)AS order_revenue,
        SUM(profit)AS order_profit
    FROM 
        fact_sales
    GROUP BY 
        salesorderid        
)    
    SELECT 
         Round(SUM(order_revenue)::numeric,2) AS total_revenue,
         Round(SUM(order_profit)::numeric,2) AS total_profit,
         Round(AVG(order_revenue)::numeric,2) AS average_order_value
    FROM sales_summary         
         
         
