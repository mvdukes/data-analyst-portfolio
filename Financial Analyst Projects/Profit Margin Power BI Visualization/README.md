# Profit Margin Dashboard (Power BI)

**Tools:** Power BI, Excel

**Goal:**
Visualize profit margins by product line and country using data exported from MySQL.

**Steps:**
1. Exported sales data from MySQL as `sales_for_bi.csv`.
2. Created `costs.csv` with estimated cost percentages per product line.
3. Connected both tables in Power BI using productLine as key.
4. Created DAX measures:
	- Revenue = SUM(sales)
	- Cost = SUMX(sales * cost_pct)
	- Profit = Revenue - Cost
	- Profit Margin = Profit / Revenue
5. Built visuals (cards, bar charts, donut charts, line trends) and added a slicer for more detailed viewing by product.

**Skills Demonstrated:**
	- Data modeling and relationships
	- DAX calculations for KPIs
	- Dashboard design and visualization

**Insights:**
	- Vintage Cars and Motorcycles have highest profit margins.
	- Ships & Planes have the highest costs.
	- Total company profit margin ~36.28%.
