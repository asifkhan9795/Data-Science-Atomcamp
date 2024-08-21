-- Sql language is case -insensitive

-- Select Database
use users_record;

-- Show all the data
select * from books_data;
-- WHERE -- refers to conditional statements. 

-- Fetch the record of book "alchemist"
Select * from books_data
where Book_name = "alchemist";
--  Exercise: Find books in the `books_data` table with  real price greater than 900.
select * from books_data
where product_real_price > 900;

--  Exercise: Show books that are in hindi Language
select *from books_data
where language = "hindi";
-- WHERE with (IN, OR, AND, NOT EQUAL TO, NOT IN)
-- And
-- Exercise: Show the books with discount_offered_prcnt is in range of 30 - 40. ( 30>=  and <=40 )
select * from books_data
where discount_offered_prcnt >= 30 and discount_offered_prcnt <= 40; 
-- OR
-- Exercise: Identify books that are either in english or Hindi or bengali
select * FROM books_data
where language = "english" or language = "hindi" or language = "bengali";

-- IN ------ used when more or it is difficult to apply more conditions (it make OR funtion more simple)
select * from books_data
where language in ("English", "Hindi", "Bengali");

-- Not IN


-- Exercise: Identify books that are NOT in english or Hindi or bengali
select * from books_data
where language not in ("English", "Hindi", "Bengali");

-- Like --- used when we don't have complete information and we want to identify

-- Exercise: List down the books details with Author Name starts with either A or B;
select *from books_data
where author like "A%" or author like "B%";
-- find the entry with first alphabet or last alphabet
-- For starting alphabet "A%", For ending alphabet "%B", For between words "%oo%"
-- we used this like in address we have district in between the address for that we use "Like" Function
-- Example: Address of customer; House, Street, Town, District, Province, Country  
select *from books_data
where type like "%back"; -- Show me the last words of "type"

-- Not Equal ( != , <>)
-- Exercise: Display the books with properly defined type, NOT other.
select * from books_data
where type != "other";

select * from books_data
where type <> "paperback";

-- Order BY
-- Exercise: Order authors by their names in ascending order
-- using the order by funtion the speacial character will popup on first place which is usefull for data cleaning
select * from books_data
order by author; -- by default it will shows in acending order

select * from books_data
order by author desc;

select * from books_data
order by author asc;
 
-- LIMIT
-- Exercise: List the top 5 highest rating books from the table.
select * from books_data
order by product_rating desc
limit 5;

-- Modifying and Updating Tables
-- Add a new column to the dataset
ALTER TABLE books_data -- alter table table_name 
add record_date date; -- add column_name datatype;


-- --------------------------------------------------------------------------------
-- ############# SQL safe updates off/ disable #########################
set sql_safe_updates = 0; -- if we want to change or update with in the table then it require your permission 
-- ---------------------------------------------------------------------------------
-- Update the date to today's date 
select * from books_data;
update books_data
set record_date ="2024-07-02"; 
-- Update the author name of "his divine grace a.c. bhaktivedanta swami prabhupada""" to 'a.c. bhaktivedanta swami prabhupada'


-- Rename column name

-- alter table table_name
-- rename column old_column_name to new_column_name

-- change the datatype from date to datetime

-- update the record_date value for book "Atomic habits"

-- DELETE Statements:
-- Delete the first record with sr_no = 0 

-- Add a primary key to existing table

-- Auto increment

-- insert a record without sr_no to check how it works

-- Convert Author names to uppercase:

-- Remove leading/trailing whitespaces from the name field
-- TRIM

-- Concatenation
-- Show the column with values as "This __book__ is in ___this__ language "

-- alias 
-- nickname / short name

-- drop column 

-- Drop the table
