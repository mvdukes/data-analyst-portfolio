Data Analyst Portfolio — Real Data Projects (Excel • SQL • Power BI)
-
by Malik Dukes

This portfolio demonstrates my ability to analyze and visualize financial data using Excel, SQL, and Power BI — the same tools financial analysts, FP&A teams, and data professionals use daily.
each project is designed to highlight core analytical skills across data cleaning, financial modeling, and business insights using real or realistic data sources.  

Table of Contents
-

Overview

Project 1 — Revenue & Expense Dashboard

Project 2 — SQL Sales Data Analysis

Project 3 — Profit Margin Dashboard


Overview
-

This portfolio is meant to showcase how an FP&A analyst can take raw financial data, transform it into clear visuals, and derive insightful conclusions for management. The projects walk through every step from collecting real financial data (SEC filings and sales datasets), cleaning and modeling in Excel/SQL, and visualizing insights in Power BI. 


Project 1 — Revenue & Expense Dashboard
-

Tool: Excel

Company: Dick’s Sporting Goods (CIK: 0001089063)

Data Source: SEC Financial Statement Dataset (num.txt, sub.txt)

Objective:

To build a dashboard that shows how revenue and expenses change over time using real world company data.

Process:

> Downloaded Dick’s Sporting Goods financial data from the SEC.

> Filtered tags such as:

>> - Revenues
>> - CostOfGoodsAndServicesSold
>> - OperatingIncomeLoss
>> - NetIncomeLoss

>Cleaned and formatted the data in Excel.

>Created calculated fields for gross profit and net margin.

>Built charts showing revenue growth, expense trends, and profitability by quarter.

Key Insight

Dick’s Sporting Goods maintained consistent quartelry revenue growth and the expense growth was proportional to revenue showing effective cost management.

Project 2 — SQL Sales Data Analysis
-

Tools: MySQL + Excel

Dataset: sales_data_sample.csv (real-world dataset used for training)

Objective:

To analyze company-wide sales by product line, country, and month using SQL queries.

Process:

>Imported the CSV into MySQL and fixed date formatting using:

>STR_TO_DATE(orderDate, '%m/%d/%Y %H:%i')

>Ran key analysis queries:

>> - Total revenue by product line
  
>> - The Top 5 countries by revenue
  
>> - Monthly revenue trend
  
>> - Top selling product by country
  
>> - Average order value by deal size
  
>Exported results into Excel and visualized with charts.

Key Insight

Classic Cars brought the highest sales totaling $3,919,615 and the US accounted for over 30% of all revenue. The top five countries by revenue were the US, Spain, France, and the UK. With this being said the US brought in over 3.6 million in revenue while the combined remaining 4 only brought in 3.4 million combined.

Project 3 — Profit Margin Dashboard
-

Tools: Power BI + Excel

Datasets: sales_for_bi.csv (sales data) + costs.csv (cost percentages)

Objective:

Build a dynamic Power BI dashboard to visualize profit and understand profit margins by product line and country using Data exported from SQL.

Process

>Connected sales and cost tables using productLine as the relationship key.

>Created DAX measures:

>>- Revenue = SUM(sales_for_bi[sales])
  
>>- Cost = SUMX(sales_for_bi, sales_for_bi[sales] * RELATED(costs[cost_pct]))
  
>>- Profit = [Revenue] - [Cost]
  
>>- Profit Margin = DIVIDE([Profit], [Revenue], 0)
  
> Built visuals:

>>- Bar chart: profit by product line
  
>>- Line chart: revenue trend
  
>>- Built out visuals (cards, bar charts, donut charts, line trends) and added a slicer for more detailed viewing by product.
  
Key Insight

Vintage Cars and Motorcycles have highest profit margins, ships & Planes have the highest costs, and the total company profit margin ~36.28%

-

Skills Demonstrated in Portfolio:
-

>Financial Analysis - revenue, expense, and margins,  
  
>Data Cleaning & Modeling - Excel functions, Power Query, SQL joins
  
>SQL Proficiency -	GROUP BY, SUM, DATE functions, joins
  
>Power BI / DAX - measures, relationships, dynamic dashboards
  
>Data Visualization - PivotCharts, Power BI cards & visuals
  
>Storytelling with Data - turning analysis into clear business insights

Tools Used:
-

>Excel — financial modeling, pivot tables, dashboards

>MySQL — data import, aggregation, and trend analysis

>Power BI — visualization, DAX calculations, KPI dashboards

About Me
-

Malik Dukes

Finance Major, University of Alabama

Emerging Financial Analyst | Excel • SQL • Power BI • Financial Modeling

Austin, TX

I’m passionate about bridging finance and data analytics — helping businesses make smarter, data-driven decisions through clear visual storytelling and financial insight.

Connect With Me

malikdukes73@email.com

https://www.linkedin.com/in/malik-dukes/

