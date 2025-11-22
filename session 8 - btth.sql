create table Orders (
    order_id int primary key,
    customer_name varchar(100),
    product varchar(100),
    quantity int,
    price decimal(10,2),
    country varchar(50)
);

insert into Orders (order_id, customer_name, product, quantity, price, country)
values
(1, 'John Doe', 'Laptop', 2, 800, 'USA'),
(2, 'Robert Luna', 'Smartphone', 1, 600, 'USA'),
(3, 'David Robin', 'Tablet', 3, 300, 'UK'),
(4, 'John Reimh', 'Laptop', 1, 800, 'UK'),
(5, 'Betty Doe', 'Headphones', 4, 50, 'UAE');

select COUNT(*) as so_don_hang
from Orders;

select SUM(quantity) as tong_so_luong_sp
from Orders;

select AVG(price) as gia_trung_binh
from Orders;

select MIN(price) as gia_thap_nhat, MAX(price) as gia_cao_nhat
from Orders;

select country, COUNT(*) as so_don_hang
from Orders
GROUP BY country;

select country, AVG(price) as gia_tb_theo_quoc_gia
from Orders
GROUP BY country;