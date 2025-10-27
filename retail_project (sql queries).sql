CREATE DATABASE retail_project;
USE retail_project;
show databases;
USE retail_project;
SHOW TABLES;
SELECT COUNT(*) FROM clean_superstore;
SELECT * FROM clean_superstore LIMIT 5;
DESCRIBE clean_superstore;
RENAME TABLE clean_superstore TO orders;
SHOW TABLES;
SELECT COUNT(*) FROM orders;
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;
SELECT 
    ROUND(SUM(Sales),2)   AS Total_Sales,
    ROUND(SUM(Profit),2)  AS Total_Profit,
    ROUND(AVG(Discount),2) AS Avg_Discount
FROM orders;
SELECT 
    Category,
    ROUND(SUM(Sales),2)  AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;
SELECT 
    City,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT 
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY Region
ORDER BY Total_Profit DESC;
SELECT 
    Segment,
    ROUND(SUM(Sales),2)  AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY Segment
ORDER BY Total_Profit DESC;
SELECT 
    DATE_FORMAT(STR_TO_DATE(`Order Date`, '%m/%d/%Y'), '%Y-%m') AS Month,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY Month
ORDER BY Month;
ALTER TABLE orders
CHANGE COLUMN `Order Date` Order_Date DATE,
CHANGE COLUMN `Ship Date` Ship_Date DATE;
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY Month
ORDER BY Month;
DESCRIBE orders;
CREATE OR REPLACE VIEW v_overall_summary AS
SELECT 
    ROUND(SUM(Sales),2)  AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND(AVG(Profit),2) AS Avg_Profit_Per_Order
FROM orders;
SELECT * FROM v_overall_summary;
CREATE OR REPLACE VIEW v_monthly_trends AS
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
    ROUND(SUM(Sales),2)  AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY Month
ORDER BY Month;
SELECT * FROM v_monthly_trends LIMIT 10;
CREATE OR REPLACE VIEW v_region_performance AS
SELECT 
    Region,
    ROUND(SUM(Sales),2)  AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY Region
ORDER BY Total_Profit DESC;
SELECT * FROM v_region_performance;
CREATE OR REPLACE VIEW v_category_performance AS
SELECT 
    Category,
    ROUND(SUM(Sales),2)  AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;
CREATE OR REPLACE VIEW v_top_products AS
SELECT 
    `Product Name`,
    ROUND(SUM(Sales),2)  AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM orders
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;
SHOW FULL TABLES WHERE Table_type = 'VIEW';







