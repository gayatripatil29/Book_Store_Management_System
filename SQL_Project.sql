create database book_store;
use book_store;

create table books_list(
b_id int primary key auto_increment,
b_name varchar(30) not null,
b_author varchar(30) not null,
b_genre enum('Thriller','Comedy','C'),
b_cost int not null,
b_quantity int not null,
b_description text
);

desc products;

create table cust_registration(
c_id int not null primary key auto_increment,
c_first_name varchar(20) not null,
c_last_name varchar(20) not null,
c_email varchar(20) not null,
c_phone varchar(15) not null,
c_address varchar(20) 
);

desc cust_registration;

create table customer_histroy(
cust_id int not null,
p_id int not null,
p_quantity int not null,
cust_time timestamp
);

desc customer_histroy;
set @date_1='2020/07/15';
set @date_2=29;

SELECT DATEDIFF("2017-06-25", "2017-06-15");

select*from products;
select*from cust_registration;
select*from customer_histroy;

show tables;

select * into outfile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/product_report.csv"
fields terminated by ',' optionally enclosed by "" lines terminated by '\n'
from products;

select * into outfile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cust_reg__report.csv"
fields terminated by ',' optionally enclosed by "" lines terminated by '\n'
from cust_registration;

select * into outfile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cust_hist_report.csv"
fields terminated by ',' optionally enclosed by "" lines terminated by '\n'
from customer_histroy;