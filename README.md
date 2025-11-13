# Pizza-Sales-Report
🍕 Pizza Sales Analysis – SQL & Power BI Dashboard

A complete end-to-end data analytics project built using MySQL, Power BI, and the raw Pizza Sales CSV file.
This project demonstrates data cleaning, feature engineering, SQL-based analysis, and interactive dashboard creation.

📁 Project Overview

The goal of this project was to analyze pizza sales data and uncover insights into customer ordering behavior, product performance, and sales trends.
Using SQL for backend analysis and Power BI for visualization, the project provides a complete picture of:

Total revenue & sales metrics
Best and worst-selling pizzas
Sales distribution by category & size
Daily, weekly & monthly order trends
Category-wise performance
Customer buying patterns across time

🛠️ Tech Stack
Database: MySQL
Visualization: Power BI
Data Source: Pizza Sales CSV
Languages/Tools: SQL, DAX (where required), Power BI Desktop

🧹 Data Cleaning & Feature Engineering

To prepare the dataset for meaningful analysis, the following transformations were performed:
Handled inconsistencies and formatting issues
Created new calculated columns:
month
monthname
day
dayname

Converted date & time fields into usable formats
Ensured proper datatype assignments
Aggregated data for KPI generation

🧮 SQL Analysis Performed
Several SQL queries were written to compute:
KPIs
Total Revenue
Average Order Value
Total Pizza Sold
Total Orders
Average Pizzas Per Order
Sales Insights
Daily & hourly order trends
Sales % by pizza category
Sales % by pizza size
Total pizzas sold by category
Top 5 & Bottom 5 pizzas (by revenue, quantity & orders)
Month-wise and category-wise performance

📊 Power BI Dashboard Highlights
The Power BI report consists of:

📍 Dashboard 1 – Overall Sales
KPI cards (Revenue, AOV, Total Orders, etc.)
Daily trend for orders
Monthly trend line
% sales by category
% sales by size
Total pizzas sold by category

📍 Dashboard 2 – Best & Worst Sellers
Top 5 pizzas by revenue, quantity & total orders
Bottom 5 pizzas by the same metrics
Category slicer
Date range slicer

📈 Key Insights
Weekends show the highest number of orders
May & June have the strongest monthly demand
Classic category generates the highest sales
Large pizzas contribute the most to revenue
Revealed clear top-performing and low-performing pizza items

🚀 How to Run the Project

Import the CSV file into MySQL
Run the SQL script (pizza_sales_data.sql)
Connect Power BI to the MySQL database (or use CSV directly)
Load visuals & refresh the dashboard

📬 Contact

If you liked this project or want to collaborate, feel free to connect with me on LinkedIn!
