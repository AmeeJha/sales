use ecommerce;
-- all the products in toy category
/*select * from products
where category = "toys";*/

-- highest price 
/*select product_id, product_name, price
from products
order by price desc
limit 1;*/

-- find the total sales
/*select product_id, product_name,
sales_month_1 + sales_month_2 + sales_month_3 + sales_month_4 + sales_month_5 + sales_month_6 + sales_month_7 + sales_month_8 +
sales_month_9 + sales_month_10 + sales_month_11 + sales_month_12 AS total_sales
from products;*/

-- find the review_score and review_count > 4.0 and 500
/*select * from products
where review_score > 4.0 and review_count > 500;*/

-- find the avg price of each category 
/*select category, avg(price) as average_price
from products
group by category;*/

-- find the top 5 products with the highest total sales 
/*select product_id, product_name, sales_month_1 + sales_month_2 + sales_month_3 + sales_month_4 +
sales_month_5 + sales_month_6 + sales_month_7 + sales_month_8 + sales_month_9 + sales_month_10 + 
sales_month_11 + sales_month_12 AS total_sales
from products
order by total_sales desc
limit 5;*/

-- list the product where the price is < 300,review_score 3.5 between 4.5  
/*select * from products
where price < 300 and review_score between 3.5 and 4.5;*/

select product_id, product_name, 
sales_month_1 + sales_month_2 + sales_month_3 + sales_month_4 + sales_month_5 + sales_month_6 
 as sales_first_half,
sales_month_7 + sales_month_8 + sales_month_9 + sales_month_10 + sales_month_11 + sales_month_12
 as sales_second_half
from products
where category = 'Home & Kitchen';