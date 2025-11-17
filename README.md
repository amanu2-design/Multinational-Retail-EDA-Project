# Multinational Retail EDA — Portfolio Project
Author: Amanuel Bizuneh  
Project:Exploratory Data Analysis & Insights for a Multinational Retail Company

Project Overview

This repository documents an end-to-end Exploratory Data Analysis (EDA) on sales data collected from multiple countries.  
The goal is to prepare data for analytics, run SQL-based analysis, automate backups, and create a Power BI dashboard that surfaces actionable insights (sales, profit, top products, store performance).

Key highlights
- Country-level sales datasets (CSV)
- SQL scripts for importing, cleaning, and analyzing data
- Python scripts for automating ETL and Google Drive backups
- Power BI dashboard for interactive visualization
- Reports & GIFs used for presentation

# Data analysis

## 1) sales revenue and profit by country for February

### SQL query 

select  country, 
        sum(total_amount) as Total_reveneu,
        sum(profit)       as Total_profit
from sales_data
where "date" between '2025-02-1' and '2025-02-28'
group by country
order by total_reveneu desc;

### Result
1) sales revenue and profit by country for february.PNG
https://github.com/amanu2-design/Multinational-Retail-EDA-Project/blob/main/1)%20sales%20revenue%20and%20profit%20by%20country%20for%20february.PNG
<img width="351" height="195" alt="1) sales revenue and profit by country for february" src="https://github.com/user-attachments/assets/2fb1ea6b-f764-4646-ad96-0a5a25dccc3f" />

### Interpretation of the result
Nigeria, USA and UK are leading with top 3 revenue respectively , while India and Canada hold the last rank.
 
### Recommendation
India and Canada must strength their performance, while  Nigeria and USA also have to maintained their performance.



##2) top 5 best saling product
###  SQL query
Select product_name,
        sum(quantity_purchased) as Total_unit_sold
from sales_data 
where "date" between '2025-02-1' and '2025-02-28'
group by product_name
order by sum(quantity_purchased) desc
limit 5;
### Result
 

### Interpretation
Degree hold the first while shake are the last of top 5

### Recommendation
Shake need extra marketing and stock

## 3) best sale representative
### SQL Query 
select sales_representative,
        sum(total_amount) as Totale_sale
from sales_data
where "date" between '2025-02-1' and '2025-02-28'
group by sales_representative
order by sum(total_amount) desc
limit 5;

### Result
 

### Interpretation
Jermaine Charles and Jessica Lee are leading with top 2 respectively from top 5 ,While Craig Harris hold the 5th row

### Recommendation
Jermaine Charles is doing good with almost 5000 sales per month and he had to appreciate 
Crag harris need furthered follow-up   

## 4) which store location is generating the highest revenue
### SQL query
select store_location,
       sum(total_amount) as total_sales,
	   sum(profit) as total_profit
from sales_data
where "date" between '2025-02-1' and '2025-02-28'
group by store_location
order by sum(total_amount) desc
limit 5;
### Result
 
### Interpretation
Stores in New York, Port Harcort are top 3 respectively, while Ls Angeles stores is the last at the line

### Recommendation
Los Angeles store need to work to increase their sales, while New York store had to maintain

##  5) key sales and profit insight for February
### SQL query
select Min(total_amount) as min_sale_value,
       Max(total_amount) as max_sale_value,
	   AVG(total_amount) as Avg_sale_value,
	   Sum(total_amount) as Total_sale_value,
	   Min(profit) as min_ptofit,
       Max(profit) as max_profit,
	   Avg(profit) as Avg_profit,
	   Sum(profit) as Total_profit
from sales_data
where "date" between '2025-02-1' and '2025-02-28'

### Result  




