create table Books (
book_id int primary key,
title varchar(200),
author varchar(150),
publication_year int,
pages int
);

create table Borrowing_Records (
record_id int primary key,
book_id int,
foreign key (book_id) references Books(book_id),
borrow_date date
);

select COUNT(*) as total_books
from books;

select SUM(pages) as total_pages_in_library
from books;

select AVG(pages) as average_pages_per_book
from books;

select MIN(publication_year) as oldest_book_year, MAX(publication_year) as newest_book_year
from books;

select MIN(borrow_date) as first_borrow_date
from Borrowing_Records;

select count(*) as books_after_2000
from books
where publication_year > 2000;