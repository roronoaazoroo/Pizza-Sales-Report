create database pizza;
use pizza;

select * from pizza_data;


-- KPIs
SELECT SUM(total_price) as TOTAL_REVENUE
FROM pizza_data;

-- AVERAGE ORDER VALUE PER id 
SELECT order_id, AVG(total_price) as avg_order_value_per_id, COUNT(*) as frequency
FROM pizza_data
GROUP BY order_id;

-- AVERAGE ORDER VALUE
SELECT SUM(total_price)/ count(DISTINCT order_id) as average_order_value
FROM pizza_data;

-- PIZZA PER ORDER 
SELECT distinct order_id, COUNT(*) as 'no_of_order_per_id'
FROM pizza_data
GROUP BY order_id;

-- AVERAGE PIZZA PER ORDER
SELECT t.total_pizza/t.total_orders AS AVG_pizza_per_order FROM(
SELECT SUM(quantity) as total_pizza, COUNT(DISTINCT order_id) AS total_orders FROM pizza_data) as t;

-- total pizza sold
SELECT SUM(quantity) as total_pizza_sold
FROM pizza_data;

-- total orders
SELECT COUNT(DISTINCT order_id) as total_order
FROM pizza_data;


-- DAILY TREND FOR TOTAL ORDERS
-- SELECT DAYNAME(order_date) as order_day, COUNT(distinct order_id) as total_order_id
-- FROM pizza_data
-- GROUP BY DAYNAME(order_date);

SELECT 
    DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS order_day,
    COUNT(DISTINCT order_id) AS total_order_id
FROM pizza_data
GROUP BY DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y'));


-- HOURLY TREND
SELECT HOUR(order_time) as order_time_in_hour,
COUNT(DISTINCT order_id) as total_order_id
FROM pizza_data
GROUP BY HOUR(order_time)
ORDER BY HOUR(order_time);



select * from pizza_data;

-- PERCENTAGE OF SALES BY PIZZA CATEGORY
SELECT pizza_category, ROUND((SUM(total_price)/(SELECT SUM(total_price) from pizza_data))*100,2) as percentage_by_category
FROM pizza_data
GROUP BY pizza_category;

-- PERCENTAGE OF SALES BY PIZZA CATEGORY AT A SPECIFIC MONTH
SELECT pizza_category, ROUND((SUM(total_price)/(SELECT SUM(total_price) from pizza_data 
												WHERE MONTHNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) = 'January'))*100,2) as percentage_by_category
FROM pizza_data
WHERE MONTHNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) = 'January'
GROUP BY pizza_category;


-- PERCENTAGE OF SALES BY PIZZA SIZE IN QUARTER=1
SELECT pizza_size, ROUND((SUM(total_price)/(SELECT SUM(total_price) from pizza_data
											WHERE QUARTER(STR_TO_DATE(order_date,'%d-%m-%Y')) = 1))*100,2) as percentage_by_category
FROM pizza_data
WHERE QUARTER(STR_TO_DATE(order_date,'%d-%m-%Y')) = 1
GROUP BY pizza_size
ORDER BY percentage_by_category;



-- Total no of pizza sold 
SELECT pizza_category, SUM(quantity) as Total_pizza_sold_by_category
FROM pizza_data
GROUP BY pizza_category;


select * from pizza_data;
-- wrt pizza_name give the top 5 bestseller
SELECT pizza_name, SUM(quantity) as units_sold
FROM pizza_data
GROUP BY pizza_name
ORDER BY units_sold DESC LIMIT 5; 

-- wrt pizza_name give the worst 5 bestseller
SELECT pizza_name, SUM(quantity) as units_sold
FROM pizza_data
GROUP BY pizza_name
ORDER BY units_sold LIMIT 5; 

-- wrt pizza_name give the worst 5 bestseller in august month
SELECT pizza_name, SUM(quantity) as units_sold
FROM pizza_data
WHERE MONTHNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) = 'August'
GROUP BY pizza_name
ORDER BY units_sold LIMIT 5; 
