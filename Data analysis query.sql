--Data analysis and business 
select * from sales_data;
-- 1) sales revenue and profit by country for february
select  country, 
        sum(total_amount) as Total_reveneu,
        sum(profit)       as Total_profit
from sales_data
where "date" between '2025-02-1' and '2025-02-28'
group by country
order by total_reveneu desc;

 -- interpretaion
 
 --  Nigeria,USA and UK  is leading with top 3 revenue repectivly 
 -- while india and canada hold the last rank.

 -- Recommendation
 -- inidia  and canada must strangth thier performance,
 -- while  Nigeria and USA also have to maintaine ther performance.



 -- 2) top 5 best saling product
select product_name,
        sum(quantity_purchased) as Total_unit_sold
from sales_data 
where "date" between '2025-02-1' and '2025-02-28'
group by product_name
order by sum(quantity_purchased) desc
limit 5;

-- Iterpretaion
-- degree hold the firist while shake are the last of top 5

-- Recommendation
-- Shake need extara markating and stock 




-- 3) best sale representative
select sales_representative,
        sum(total_amount) as Totale_sale
from sales_data
where "date" between '2025-02-1' and '2025-02-28'
group by sales_representative
order by sum(total_amount) desc
limit 5;

-- Interpretaion
-- Jermaine Charles and Jessica Lee are leadding with top 2 respectively from top 5
-- while Craig Harris hold the 5th row

-- recommenration
-- Jermaine Charles is doing good with almost 5000 sales ber month and he had to apritiated 
-- Crag harris need furthure followup                                                                               




 -- 4) which store location is generating the highst revenue
select store_location,
       sum(total_amount) as total_sales,
	   sum(profit) as total_profit
from sales_data
where "date" between '2025-02-1' and '2025-02-28'
group by store_location
order by sum(total_amount) desc
limit 5;

-- interpretaion
-- stores in Newyork ,Port Harcort are top 3 respectively ,
-- while Ls Angeles stores is the last at the line

-- recommendation
-- Losangeles store need to work to incease thier sales 
-- while New York store had to maintain



-- 5) key sales and profit insight for february
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

