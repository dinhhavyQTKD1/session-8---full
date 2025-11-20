create table Products (
product_id int primary key,
product_name varchar(255),
category varchar(150),
price decimal
);

create table Orders (
order_id int primary key,
customer_id int,
order_date date,
total_amount decimal
);

select COUNT(category) as number_of_products
from products
GROUP BY category;

select customer_id, SUM(total_amount) as total_spent
from orders
GROUP BY customer_id;

select category,
	COUNT(*) as product_count,
	AVG(price) as avg_price,
    MAX(price) as max_price, MIN(price) as min_price
from products
GROUP BY category;
 
select category, COUNT(*) as product_count
from products
GROUP BY category
HAVING COUNT(*) > 5;
 
select customer_id, SUM(total_amount) as total_spent
from orders
GROUP BY customer_id
ORDER BY total_spent desc
LIMIT 3;