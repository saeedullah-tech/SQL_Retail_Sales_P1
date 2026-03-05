create table retail_sales (
transactions_id int primary key,
sale_date date,
sale_time time,
customer_id int,
gender varchar(15),
age int,
category varchar(15),
quantiy int,
price_per_unit float,
cogs float,
total_sale float

);
select * from retail_sales
where transactions_id is null
or sales_date is null
or sale_time is null
or customer_id is null
or gender is null
or age is null
or category is null
or quantity is null
or price_per_unit is null
or cogs is null
or total_sale is null;
-- data Exploration
-- How many sales we have?
select count(*) as total_sale from retail_sales

--how many customers we have ?
select count (customer_id) as total_sale from retail_sales
select distinct category from retail_sales
-- data Analysis & Business key Problem & Answer
select * from retail_sales
where sale_date = '2022-11-05';
select category,
sum(quantiy) from retail_sales where category = 'clothing'
and to_char(sale_date, 'yyyy-mm') = '2022-11-05'
and quantity>=4;
select category , sum(total_sale) as net_sale,
count (*) as total_orders from retail_sales 
group by 1;
select round(avg(age), 2) as avg_age from retail_sales where category ='Beauty';
select * from retail_sales where total_sale > 1000;
select category, gender, count (*) as total_trans
from retail_sales group by
category, gender;

select
customer_id, 
sum (total_sale) as total_sales
from retail_sales
group by 1 order by 2 desc
limit 5;
select category,
count(distinct customer_id) as cnt_unique_cs
from retail_sales
group by category;
with hourly_sale as (
select *,
case when extract( hour from sale_time) < 12 then 'Morning'
when extract (hour from sale_time) Between 12 and 17 then 'Afternoon'
else 'Evening'
end as shifting from retail_sales) select shifting, count(*) as total_orders
from hourly_sale
group by shifting;



