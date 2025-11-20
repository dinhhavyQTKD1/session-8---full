create table products (
product_id int primary key,
product_name varchar(100),
price decimal,
stock_quantity int
);

create table customers (
customer_id int primary key,
customer_name varchar(100),
city varchar(50)
);

create table orders (
order_id int primary key,
customer_id int,
foreign key (customer_id) references customers(customer_id),
order_date date,
total_amount decimal
);

select count(*) as total_products
from products;

select SUM(total_amount) as total_revenue
from Orders;

select avg(price) as average_price
from products;

select max(price) as max_order_amount, min(price) as min_order_amount
from products;

select count(customer_id) as hanoi_customers_count
from customers
where city = 'Ha Noi';
