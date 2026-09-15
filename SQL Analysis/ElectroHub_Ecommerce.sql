create database ElectroHub_Ecommerce_sales;
use ElectroHub_Ecommerce_sales;

select * from Products;
select * from customers;
select * from orders;
select * from delivery;
select * from order_items;

-- =========================================
-- ElectroHub_ECOMM BUSINESS ANALYSIS
-- =========================================

-- A. BASIC KPIs

-- 1. Total Sales
select sum(Net_sales_INR) as Total_Sales from order_items;

-- 2. Total Profit
select sum(Gross_profit_INR) as Total_Profit from order_items;

-- 3. Total Orders
select count(Order_id) as Total_Order from orders;
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders FROM orders;  -- unique orders

-- 4. Total Customers
select count(distinct customer_id) as Total_Customers from customers;

-- 5. Average Order Value
select round(sum(oi.Net_Sales_INR) / count(distinct o.Order_ID),2) as AOV from order_items;

SELECT  round(sum(oi.Net_Sales_INR) / count(distinct o.Order_ID),2) AS AOV
FROM orders o
JOIN order_items oi ON o.Order_ID = oi.Order_ID;

-- 6. Profit Margin
select sum(Gross_profit_INR) / sum(Net_Sales_INR)*100 as profit_margin from order_items; 

-- percentage of orders are cancelled or returned?
SELECT SUM(CASE WHEN Order_Status IN ('Cancelled', 'Returned') THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS Cancel_Return_Rate 
FROM orders;

-- B. SALES ANALYSIS
-- 7. Which month generates the highest sales?
select  month(o.order_Date) as Month_num , round(sum(oi.Net_sales_INR),2) as Total_sales 
from orders o 
join order_items oi on o.order_id = oi.order_id
group by month(o.order_Date) 
order by Total_sales desc;


-- 8. Which month generates the highest profit?
select  month(o.order_Date) as Month_num , round(sum(oi.Gross_profit_INR),2) as Total_profit 
from orders o 
join order_items oi on o.order_id = oi.order_id
group by Month_num 
order by Total_profit desc;

-- 9. Which category generates the highest sales?
SELECT p.Category, Round(SUM(oi.Net_Sales_INR),2) AS Sales
FROM order_items oi
JOIN products p ON oi.Product_ID = p.Product_ID
GROUP BY p.Category
ORDER BY Sales DESC;

-- 10. Which category generates the highest profit?
SELECT p.Category, Round(SUM(oi.Gross_Profit_INR),2) AS Profit
FROM order_items oi
JOIN products p ON oi.Product_ID = p.Product_ID
GROUP BY p.Category
ORDER BY Profit DESC;

-- 11. What are the Top 10 products by sales?
SELECT p.product_name, Round(SUM(oi.Net_Sales_INR),2) AS Sales
FROM order_items oi
JOIN products p ON oi.Product_ID = p.Product_ID
GROUP BY p.product_name
ORDER BY Sales DESC LIMIT 10;

-- 12. What are the Top 10 products by profit?
SELECT p.Product_Name, Round(SUM(oi.Gross_Profit_INR),2) AS Profit
FROM order_items oi
JOIN products p ON oi.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Profit DESC LIMIT 10;

-- 13. Which states generate the highest sales?
SELECT c.State, Round(SUM(oi.Net_Sales_INR),2) AS Sales
FROM customers c
JOIN orders o ON c.Customer_ID = o.Customer_ID
JOIN order_items oi ON o.Order_ID = oi.Order_ID
GROUP BY c.State
ORDER BY Sales DESC;


-- C. CUSTOMER ANALYSIS
-- 12. Which customer tier generates the highest revenue?
SELECT c.Customer_Tier, SUM(oi.Net_Sales_INR) AS Revenue
FROM customers c
JOIN orders o ON c.Customer_ID = o.Customer_ID
JOIN order_items oi ON o.Order_ID = oi.Order_ID
GROUP BY c.Customer_Tier
ORDER BY Revenue DESC;

-- 13. What are the Top 10 customers by revenue?
SELECT  c.Customer_ID, SUM(oi.Net_Sales_INR) AS Revenue
FROM customers c
JOIN orders o ON c.Customer_ID = o.Customer_ID
JOIN order_items oi ON o.Order_ID = oi.Order_ID
GROUP BY c.Customer_ID
ORDER BY Revenue DESC
LIMIT 10;

-- 14. Which acquisition channel brings the most customers?
SELECT Acquisition_Channel, COUNT(DISTINCT Customer_ID) AS Customers
FROM customers
GROUP BY Acquisition_Channel
ORDER BY Customers DESC;

-- 15. Which acquisition channel generates the highest revenue?
SELECT c.Acquisition_Channel, SUM(oi.Net_Sales_INR) AS Revenue
FROM customers c
JOIN orders o ON c.Customer_ID = o.Customer_ID
JOIN order_items oi ON o.Order_ID = oi.Order_ID
GROUP BY c.Acquisition_Channel
ORDER BY Revenue DESC;

-- 16. Which acquisition channel has the highest AOV?
SELECT c.Acquisition_Channel, SUM(oi.Net_Sales_INR) / COUNT(DISTINCT o.Order_ID) AS AOV
FROM customers c
JOIN orders o ON c.Customer_ID = o.Customer_ID
JOIN order_items oi ON o.Order_ID = oi.Order_ID
GROUP BY c.Acquisition_Channel
ORDER BY AOV DESC; 


-- 17. How many customers are repeat customers?
SELECT  c.Customer_ID, COUNT(DISTINCT o.Order_ID) AS Total_Orders
FROM customers c
JOIN orders o  ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_ID
HAVING COUNT(DISTINCT o.Order_ID) > 1;

SELECT COUNT(*) AS Repeat_Customers
FROM 
( SELECT  Customer_ID FROM orders 
GROUP BY Customer_ID
HAVING COUNT(DISTINCT Order_ID) > 1) AS repeat_customers;


-- D. PROFIT ANALYSIS
-- 18. Which category has the highest profit margin?
SELECT p.Category, SUM(oi.Gross_Profit_INR) / SUM(oi.Net_Sales_INR) * 100 AS Profit_Margin
FROM order_items oi
JOIN products p ON oi.Product_ID = p.Product_ID
GROUP BY p.Category
ORDER BY Profit_Margin DESC;

-- 19. Which products have the highest profit margin?
SELECT p.Product_Name, SUM(oi.Gross_Profit_INR) / SUM(oi.Net_Sales_INR) * 100 AS Profit_Margin
FROM order_items oi
JOIN products p ON oi.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Profit_Margin DESC
LIMIT 10;

-- 20. Discount vs Profit.Does higher discount lead to lower profit?
SELECT Discount_Pct,
Round(SUM(Net_Sales_INR),2) AS Sales,Round(SUM(Gross_Profit_INR),2) AS Profit, Round(SUM(Gross_Profit_INR) / SUM(Net_Sales_INR),2)*100 AS Profit_Margin
FROM order_items
GROUP BY Discount_Pct
ORDER BY Discount_Pct;


-- 21. Which products have high sales but low profit?
SELECT p.Product_Name, Round(SUM(oi.Net_Sales_INR),2) AS Sales, Round(SUM(oi.Gross_Profit_INR),2) AS Profit
FROM order_items oi
JOIN products p ON oi.Product_ID = p.Product_ID
GROUP BY p.Product_Name
HAVING Sales > 100000
ORDER BY Profit ASC;


-- E. PAYMENT ANALYSIS
-- 22. Which payment method is used the most?
SELECT Payment_Method, COUNT(DISTINCT Order_ID) AS Orders
FROM orders
GROUP BY Payment_Method
ORDER BY Orders DESC;

-- 23. Which payment method generates the highest sales?
SELECT o.Payment_Method, Round(SUM(oi.Net_Sales_INR),2) AS Sales
FROM orders o
JOIN order_items oi ON o.Order_ID = oi.Order_ID
GROUP BY o.Payment_Method
ORDER BY Sales DESC;

-- 24. Which payment method has the highest cancellation/return rate?
SELECT Payment_Method,
SUM(CASE WHEN Order_Status IN ('Cancelled', 'Returned') THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS Cancel_Return_Rate
FROM orders
GROUP BY Payment_Method
ORDER BY Cancel_Return_Rate DESC;

-- F. DELIVERY ANALYSIS
-- 25. What is the average delivery time?
SELECT  AVG(Actual_Delivery_Days) AS Avg_Delivery_Days
FROM delivery;

-- 26. What percentage of orders are delivered late?
SELECT 
SUM( CASE WHEN Actual_Delivery_Days > Promised_Days THEN 1 ELSE 0 END ) * 100.0 / COUNT(*) AS Late_Delivery_Rate
FROM delivery;

-- 27. Which warehouse has the highest average delivery time?
SELECT Warehouse, AVG(Actual_Delivery_Days) AS Avg_Delivery_Days
FROM delivery
GROUP BY Warehouse
ORDER BY Avg_Delivery_Days DESC;

-- 28. Which warehouse has the highest late-delivery rate?
SELECT  Warehouse,
SUM(CASE WHEN Actual_Delivery_Days > Promised_Days THEN 1 ELSE 0 END ) * 100.0 / COUNT(*) AS Late_Rate
FROM delivery
GROUP BY Warehouse
ORDER BY Late_Rate DESC;

-- 29. Which warehouse has the highest shipping cost?
SELECT  Warehouse, AVG(Shipping_Cost_INR) AS Avg_Shipping_Cost
FROM delivery
GROUP BY Warehouse
ORDER BY Avg_Shipping_Cost DESC;

-- 30. Which state has the highest late-delivery rate?
SELECT c.State,
SUM( CASE WHEN d.Actual_Delivery_Days > d.Promised_Delivery_Days THEN 1 ELSE 0 END ) * 100.0 / COUNT(*) AS Late_Rate
FROM customers c
JOIN orders o ON c.Customer_ID = o.Customer_ID
JOIN delivery d ON o.Order_ID = d.Order_ID
GROUP BY c.State
ORDER BY Late_Rate DESC;
