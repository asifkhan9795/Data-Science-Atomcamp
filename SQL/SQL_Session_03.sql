use users_record;
select * From university_students_dataset;
-- check the data types
alter table university_students_dataset
modify column EnrollmentDate date;
select * From university_students_dataset;
-- -----------------------------------
select count(StudentID) as "Total number of students" from university_students_dataset;
-- -----------------------------------
-- select round(avg(age),2) as "Average Age" from university_students_dataset;
select round(avg(age)) as "Average Age" from university_students_dataset;
-- -------------------------------------
-- What is the Highest Gpa and minimum gpa
select max(gpa) as "Highest GPA" from university_students_dataset;
select min(gpa) as "Lowest GPA" from university_students_dataset;

select max(gpa) as "Highest GPA", min(gpa) as "Lowest GPA"  from university_students_dataset;
select * from university_students_dataset;
-- ---------------------------------------
#select count (distinct major) as Total_Majors from university_students_dataset;
-- ----------------------
select max(gpa) from university_students_dataset
where Major  = "mathematics";
select *from university_students_dataset
where major = "Computer Science"
order by gpa asc
limit 1;
select min(gpa) from university_students_dataset
where Major  = "Computer Science";
-- ---------------------
select count(Gender) from university_students_dataset
where gender = "Female";
#select avg(age) from university_students_dataset:
-- -------------------
select major, gender count(*) from university_students_dataset
group by major, gender;
-- ------------------
-- select column_for_grouping, aggregated_funtion
-- 
--
select gender, count(*)
from university_students_dataset
group by gender;
-- -------------------
select Age, count(*) as Total_Students
from university_students_dataset
group by Age
order by Total_Students desc
limit 1;
-- -------------------------------------
select major, avg(age), avg(gpa)
from university_students_dataset
group by major
order by avg(age);
-- -----------------------------
select YEAR(EnrollmentDate) From university_students_dataset;
select YEAR(EnrollmentDate), count(*) 
from university_students_dataset
group by YEAR(EnrollmentDate);
-- ---------------------
select * from university_students_dataset
where gender = "Female" and EnrollmentDate > "2018-12-31";

select major, count(*)
from university_students_dataset
group by major
order by count(*)
limit 1;

