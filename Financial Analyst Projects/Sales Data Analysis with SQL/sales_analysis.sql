SELECT * FROM sales_analysis_project.sales_analysis;

DROP TABLE IF EXISTS sales_data;
CREATE TABLE sales_data
(
	orderNumber INT,
    quantityOrdered INT,
	priceEach DECIMAL(10,2),
	sales DECIMAL(12,2),
	orderDate DATETIME,           
	status VARCHAR(20),
	qtr_id INT,
	month_id INT,
	productLine VARCHAR(50),
	country VARCHAR(50),
	dealSize VARCHAR(10)
);

INSERT INTO sales_data 
(
  orderNumber, 
  quantityOrdered, 
  priceEach, 
  sales,
  orderDate, 
  status, 
  qtr_id, 
  month_id, 
  productLine, 
  country, 
  dealSize
)

SELECT
  ORDERNUMBER,
  QUANTITYORDERED,
  PRICEEACH,
  SALES,
  STR_TO_DATE(TRIM(ORDERDATE_TEXT), '%c/%e/%Y %H:%i') AS orderDate,
  STATUS,
  QTR_ID,
  MONTH_ID,
  PRODUCTLINE,
  COUNTRY,
  DEALSIZE
FROM sales_analysis;

SELECT ORDERDATE_TEXT,
       STR_TO_DATE(TRIM(ORDERDATE_TEXT), '%c/%e/%Y %H:%i') AS parsed
FROM sales_analysis
LIMIT 10;

SELECT
  productLine,
  country,
  ROUND(SUM(sales), 2) AS total_revenue
FROM sales_data
GROUP BY productLine, country
ORDER BY total_revenue DESC;

SELECT
  YEAR(orderDate) AS year,
  MONTH(orderDate) AS month,
  ROUND(SUM(sales), 2) AS total_revenue
FROM sales_data
GROUP BY YEAR(orderDate), MONTH(orderDate)
ORDER BY YEAR(orderDate), MONTH(orderDate);

SELECT
  productLine,
  ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY productLine
ORDER BY total_sales DESC
LIMIT 1;

SELECT
  country,
  ROUND(SUM(sales), 2) AS total_revenue
FROM sales_data
GROUP BY country
ORDER BY total_revenue DESC
LIMIT 5;

SELECT
  dealSize,
  ROUND(AVG(sales), 2) AS avg_order_value
FROM sales_data
GROUP BY dealSize
ORDER BY avg_order_value DESC;

USE sales_project;

SELECT
  orderNumber,
  orderDate,
  productLine,
  country,
  quantityOrdered,
  priceEach,
  sales
FROM sales_data;