# 🚴 AdventureWorks Sales Analytics & Business Intelligence Dashboard


# 📌 Project Overview

The **AdventureWorks Sales Analytics Dashboard** is a complete end-to-end Business Intelligence project developed using **Tableau Public** and the **Microsoft AdventureWorks dataset**.

This project transforms raw business data into interactive executive dashboards that provide actionable insights into:

- Revenue Performance
- Profitability Analysis
- Customer Insights
- Territory Performance
- Sales Channel Analysis
- Product Intelligence

The project was designed with a professional executive reporting approach focusing on:
- Data Storytelling
- Dashboard Design
- Business KPIs
- Analytical Decision-Making
- Executive-Level Visualization

---

# 🎯 Business Problem

Businesses often struggle to:
- Track revenue growth efficiently
- Identify profitable territories
- Analyze declining sales trends
- Understand customer contribution
- Compare sales channels performance
- Monitor category-level profitability

This dashboard solves these challenges by providing centralized and interactive business insights.

---

# 🛠️ Tech Stack

| Tool / Technology | Purpose |
|-------------------|---------|
| Tableau Public | Dashboard Development |
| CSV Datasets | Data Source |
| AdventureWorks Dataset | Business Data |
| Data Visualization | Executive Reporting |
| Business Analytics | KPI & Trend Analysis |

---

# 📂 Project Structure

```bash
AdventureWorks-Sales-Analytics/
│
├── datasets/
│   ├── monthly_sales_final.csv
│   ├── online_offline_final.csv
│   ├── profit_margin_final.csv
│   ├── territory_performance_final.csv
│   ├── top_customers_final.csv
│   └── top_product_final.csv
│
├── dashboard_screenshots/
│
├── README.md
│
└── Tableau_Workbook/
    └── AdventureWorks_Dashboard.twb
```

---

# 📊 Dashboard Collection

# 1️⃣ Executive Sales Performance Dashboard

### Dashboard Focus
Executive-level KPI tracking and revenue performance monitoring.

## Key KPIs

| KPI | Value |
|-----|------|
| Total Revenue | $109.85M |
| Total Profit | $9.37M |
| Average Order Value | 3.49K |
| Top Customer Orders | 116 |

## Visualizations Included
- Monthly Revenue Trend
- Cumulative Revenue Growth
- Online vs Offline Sales Analysis

---

# 2️⃣ Product & Profit Intelligence Dashboard

### Dashboard Focus
Product category performance and profitability intelligence.

## Visualizations Included
- Top Product Categories by Revenue
- Revenue vs Profit Margin Analysis
- Revenue Decline Analysis

## Business Insights

| Category | Revenue |
|----------|---------|
| Bikes | $94.65M |
| Components | $11.80M |
| Clothing | $2.12M |
| Accessories | $1.27M |

---

# 3️⃣ Global Sales & Customer Insights Dashboard

### Dashboard Focus
Territory performance, customer contribution, and global sales insights.

## Visualizations Included
- Global Revenue & Profit Map
- Territory Profitability Analysis
- Top Revenue Territories
- Customer Revenue Contribution Treemap
- Online vs Offline Revenue Comparison

---

# 🌍 Territory Profitability Analysis

| Territory | Profit |
|-----------|--------|
| Australia | $3.43M |
| Southwest | $1.56M |
| Northwest | $1.36M |
| United Kingdom | $1.23M |
| Germany | $1.04M |
| Northeast | -$0.27M |

---

# 📈 Revenue Channel Comparison

| Sales Channel | Revenue |
|---------------|---------|
| Offline Sales | $80.49M |
| Online Sales | $29.36M |

---

# 🔍 Sample Business Analysis Logic

## Revenue Calculation

```sql
SELECT 
    SUM(SalesAmount) AS Total_Revenue
FROM FactInternetSales;
```

---

## Profit Margin Analysis

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

---

## Monthly Revenue Trend

```sql
SELECT
    OrderMonth,
    SUM(Revenue) AS Monthly_Revenue
FROM Sales_Data
GROUP BY OrderMonth
ORDER BY Monthly_Revenue DESC;
```

---

# 📌 Key Business Insights

## 🔹 Sales Channel Analysis
- Offline sales generated significantly higher revenue than online sales.
- Offline channel contributed nearly 73% of total revenue.

---

## 🔹 Territory Insights
- Australia emerged as the most profitable territory.
- Certain regions generated revenue but suffered negative profitability.

---

## 🔹 Product Intelligence
- Bikes category dominated total revenue contribution.
- Accessories and Clothing contributed comparatively lower revenue.

- <img width="2038" height="1318" alt="image" src="https://github.com/user-attachments/assets/99e21944-1412-4574-8556-ffe38df1bf53" />


---

## 🔹 Revenue Decline Detection
- Certain months experienced significant revenue drops.
- Revenue decline analysis helps identify seasonal slowdowns.

<img width="1898" height="1198" alt="Product   Profit Intelligence Dashboard" src="https://github.com/user-attachments/assets/c318c82f-1380-4098-9335-af3b602c4684" />

---

## 🔹 Customer Contribution Analysis
- A small segment of customers contributed disproportionately high revenue.
- Treemap visualization helped identify high-value customers quickly.

<img width="2238" height="1198" alt="Global Sales   Customer Insights Dashboard" src="https://github.com/user-attachments/assets/336245db-d189-4e80-97cc-1f2cf112f80c" />

---

# 🎨 Dashboard Design Principles

The dashboards were designed using:
- Minimal executive-style layout
- Soft neutral color palette
- Consistent KPI formatting
- Visual hierarchy
- Interactive storytelling
- Business-focused chart selection

---

# 🚀 Skills Demonstrated

## Data Analytics
- Revenue Analysis
- Profitability Analysis
- Customer Analytics
- Trend Analysis

## Tableau Skills
- Dashboard Design
- KPI Cards
- Geographic Maps
- Treemaps
- Scatter Plots
- Interactive Visualizations

## Business Intelligence
- Executive Reporting
- Data Storytelling
- Business KPI Monitoring
- Performance Benchmarking

---

# 📸 Dashboard Preview

## Executive Sales Performance Dashboard
(Add Screenshot Here)

---

## Product & Profit Intelligence Dashboard
(Add Screenshot Here)

---

## Global Sales & Customer Insights Dashboard
(Add Screenshot Here)

---

# 🔗 Tableau Public Dashboard

(Add Tableau Public Link Here)

---

# 💡 Future Improvements

- Add interactive filters & parameters
- Add forecasting models
- Integrate SQL database connection
- Deploy dashboards on cloud BI platform
- Add customer segmentation analysis

---

# 👨‍💻 Author

# Yash Malviya

Aspiring Data Analyst passionate about:
- Business Intelligence
- Data Analytics
- Dashboard Development
- Data Storytelling
- Data Visualization

---

# ⭐ Project Outcome

This project demonstrates the ability to transform raw business data into executive-level business insights using Tableau and modern Business Intelligence techniques.

The dashboards were developed with a strong focus on:
- analytical thinking,
- storytelling,
- professional dashboard design,
- and business decision-making support.

