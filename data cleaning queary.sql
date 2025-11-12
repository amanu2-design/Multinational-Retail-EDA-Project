-- cheeke null value
select * from  sales_data
where transaction_id is null
      or date is null
	  or country is null
	  or product_id is null
	  or product_name is null
	  or category  is null
	  or price_per_unit is null
	  or quantity_purchased is null
	  or cost_price is null
	  or discount_applied is null
	  or country is null
	  or payment_method is null
	  or customer_age_group is null
	  or customer_gender is null
	  or store_location is null
	  or sales_representative is null;
-- price_unit and quantit_purchased had null value	  

-- Cleanning null
update  sales_data
set quantity_purchased = 1
where transaction_id= '00a30472-89a0-4688-9d33-67ea8ccf7aea';


-- avg of price per unit is used to fix the null
update  sales_data
set price_per_unit = (select avg(price_per_unit) 
                      from sales_data
                       where price_per_unit is not null)
where transaction_id= '001898f7-b696-4356-91dc-8f2b73d09c63';    


-- Check duplicate (there is no duplicate)
select transaction_id, count(*)
from sales_data
group by transaction_id
having count(*) >1 ;

-- Add one columen for total_amount 
alter table sales_data
add column "total_amount" numeric(10,2);

-- Adding a value in a column total_amount 
update sales_data
set total_amount=(price_per_unit * quantity_purchased )- discount_applied;

-- Add one columen for profit
alter table sales_data
add column "profit" numeric(10,2);

-- Adding a value in a column total_amount 
update sales_data
set profit = total_amount -(cost_price + quantity_purchased)