-- Data Definition language
-- create database
create database users_record; -- cntrl + enter
-- ----------------------------------
-- use or select database
-- select users_record;
use users_record;
-- ----------------------------------
-- Lets's create a table
-- column_name datatype constraint

create table users
(
ID int Primary Key,
user_name VARCHAR(100), 
### VARCHAR is use for charactor (Variable charactor) 100= charactor length
age int
);
-- --------------------------------
-- Retrieve the data
select * from users;    -- * refers to all the data 
-- --------------------------------
-- Insert a single user entry or record

insert into users (id , user_name, age)
value (1, "Maimoona", 22 );

select *from users;

-- insert multiple rows
insert into users (id , user_name, age)
values
(2, "Ahmad" , 22 ), 
(3,"Ali", 23), 
(4, "Usman", 24), 
(5,"Bilal"), 
(6, "Basit",19),
(7, "Ariyana", 17), 
(8, "Daniyal", 19), 
(9, "Zia", 20), 
(10, "Aliyan",19);
select * from users;
-- -------------------------------
#Task 
#1. Database
#3. Create table with three columns atleast
#3. Insert around 15 entries
-- ----------------------------------
-- Load data books_data using "table import wizard"
select * From books_data;
-- ----------------------------------
 # bold text in table indicate its Primary Key in that speacific table
-- ----------------------------------

-- Query optimization --
-- Fetch only three columns
-- select column name, 2nd column name, .......
select Book_name, type, on_promotion from books_data;

-- Fetch all unique languages from the books_data
select * From books_data;
select language from books_data;
select distinct language from books_data; -- for all unique languages values
-- -----------------------------------

-- List down details of book with product_real_price is greater than 950
select *From books_data
where product_real_price > 950; # IF and Else statements

-- where (in, and, or, like, not in not equal)

-- ------------------------------------------
-- show those books with English as language
select * From books_data 
where language= "English";
-- ------------------------------------------
-- Order by 
-- sort the dataset by product_real_price
select *from books_data
order by product_real_price;
-- by default it is in ascending order --- 
-- for decending order we write "desc" at the end 
select *from books_data
order by product_real_price desc;

-- -------------------------
-- limit = to show speacific number of rows
select * From books_data
limit 2;

-- Top 5 most Expensive books
select * From books_data
order by product_disc_price desc
limit 5;
-- ---------------------------
-- backand databases like information_schema, performance_schema, mysql
show databases; -- show the names of all the existing databases
show tables; -- to show the names of all the existing tables in database

-- -------------------------------------------
-- to find/fetch employees data
-- select * From employees_table where empl_id = 1001;
-- -------------------------------------------