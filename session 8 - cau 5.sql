create table Sales (
    transaction_id int primary key,
    transaction_date date,
    customer_id int,
    total_amount decimal(10, 2)
);

insert into Sales (transaction_id, transaction_date, customer_id, total_amount) 
values
(101, '2023-10-02', 21, 75000.00),
(102, '2023-10-02', 35, 120000.00),
(103, '2023-10-03', 42, 350000.00),
(104, '2023-10-05', 21, 55000.00),
(105, '2023-10-07', 50, 210000.00),
(106, '2023-10-10', 35, 85000.00),
(107, '2023-10-11', 61, 450000.00),
(108, '2023-10-15', 21, 150000.00),
(109, '2023-10-18', 73, 95000.00),
(110, '2023-10-20', 42, 25000.00),
(111, '2023-10-22', 50, 320000.00),
(112, '2023-10-25', 21, 110000.00),
(113, '2023-10-27', 88, 180000.00),
(114, '2023-10-29', 35, 65000.00),
(115, '2023-10-30', 91, 295000.00);

select SUM(total_amount) as total_revenue
from Sales;

select COUNT(*) as total_transactions
from Sales;

select AVG(total_amount) as average_bill
from Sales;

select MAX(total_amount) as highest_bill, MIN(total_amount) as lowest_bill
from Sales;

select MIN(transaction_date) as first_transaction_date, MAX(transaction_date) as last_transaction_date
FROM Sales;

