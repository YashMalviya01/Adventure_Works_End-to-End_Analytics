# 🚴 AdventureWorks Sales Analytics & BI Dashboard

## What this project is

An end-to-end Tableau BI build on the Microsoft AdventureWorks dataset — three executive dashboards covering revenue, profitability, territory, and customer performance.

The short version of what I found:

- **Offline sales dominate** — $80.49M vs. $29.36M online, meaning offline made up nearly **73% of total revenue**.
- **Australia is the most profitable territory** ($3.43M profit) — but profitability doesn't track revenue everywhere: the Northeast generated revenue while still posting a **net loss of -$0.27M**, which is a different problem than "low sales."
- **Bikes carry the business**: $94.65M of the $109.85M total revenue — Components ($11.80M), Clothing ($2.12M), and Accessories ($1.27M) are a distant second, third, and fourth.
- **Revenue is customer-concentrated**: a small group of top customers accounts for a disproportionate share of total revenue (the top customer alone placed 116 orders).

Everything below is how I got there.

---

## Headline numbers

| KPI | Value |
|---|---|
| Total Revenue | $109.85M |
| Total Profit | $9.37M |
| Average Order Value | $3.49K |
| Top Customer — Orders | 116 |

---

## Territory profitability

| Territory | Profit |
|---|---|
| Australia | $3.43M |
| Southwest | $1.56M |
| Northwest | $1.36M |
| United Kingdom | $1.23M |
| Germany | $1.04M |
| Northeast | **-$0.27M** |

The Northeast line is the one worth a second look — it's proof this isn't just a "which region sells the most" dashboard, it's a "which region is actually profitable" one.

---

## Sales channel & category breakdown

| Channel | Revenue |
|---|---|
| Offline | $80.49M |
| Online | $29.36M |

| Category | Revenue |
|---|---|
| Bikes | $94.65M |
| Components | $11.80M |
| Clothing | $2.12M |
| Accessories | $1.27M |

---

## The analysis logic behind it

**Total revenue:**
```sql
SELECT SUM(SalesAmount) AS Total_Revenue
FROM FactInternetSales;
```

**Profit margin by category:**
```sql
SELECT 
    ProductCategory,
    SUM(Revenue) AS Total_Revenue,
    SUM(Profit) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Revenue)) * 100, 2) AS Profit_Margin
FROM Sales_Data
GROUP BY ProductCategory
ORDER BY Profit_Margin DESC;
```

**Monthly revenue trend** (used to catch seasonal drops):
```sql
SELECT OrderMonth, SUM(Revenue) AS Monthly_Revenue
FROM Sales_Data
GROUP BY OrderMonth
ORDER BY Monthly_Revenue DESC;
```

---

## The three dashboards

**1. Executive Sales Performance** — revenue, profit, AOV, and top-customer KPIs, with monthly revenue trend, cumulative growth, and online vs. offline breakdown.

<img width="2038" height="1318" alt="Product Intelligence Dashboard" src="https://github.com/user-attachments/assets/99e21944-1412-4574-8556-ffe38df1bf53" />

**2. Product & Profit Intelligence** — category revenue vs. margin, and revenue-decline detection to flag seasonal slowdowns. This is where the "Bikes dominates revenue" finding comes from.

<img width="1898" height="1198" alt="Product & Profit Intelligence Dashboard" src="https://github.com/user-attachments/assets/c318c82f-1380-4098-9335-af3b602c4684" />

**3. Global Sales & Customer Insights** — territory profit map, customer revenue treemap (this is where the "small customer segment, disproportionate revenue" finding comes from), and channel comparison.

<img width="2238" height="1198" alt="Global Sales & Customer Insights Dashboard" src="https://github.com/user-attachments/assets/336245db-d189-4e80-97cc-1f2cf112f80c" />

---

## Repo structure

```bash
AdventureWorks-Sales-Analytics/
├── datasets/
│   ├── monthly_sales_final.csv
│   ├── online_offline_final.csv
│   ├── profit_margin_final.csv
│   ├── territory_performance_final.csv
│   ├── top_customers_final.csv
│   └── top_product_final.csv
├── dashboard_screenshots/
└── Tableau_Workbook/AdventureWorks_Dashboard.twb
```

---

## What I'd add next

Interactive filters/parameters, a forecasting layer on the monthly trend, a live SQL database connection instead of static CSVs, and a proper customer segmentation model (RFM or similar) to formalize the "small segment, big revenue" finding above rather than leaving it qualitative.

---

## Author

**Yash Malviya** — Data Analyst | Tableau · SQL · Business Intelligence
[LinkedIn](https://www.linkedin.com/in/yash-malviya-03433b258/) · [GitHub](https://github.com/YashMalviya01) . [Tableau](https://public.tableau.com/app/profile/yash.malviya6387/vizzes)
