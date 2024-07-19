create database test;
use test;
-------------
create table employee(sno int,name varchar(20),salary int,age int);
insert into employee values (1,"krishna",60000,22),(2,"omkar",50000,25),(3,"sunny",45000,28),(4,"suresh",55000,20),(5,"raja",40000,19);
select * from employee;
select name from employee where salary>=50000 and age between 20 and 30;
select name from employee where salary>=50000 and (age between 20 and 30);
--------------------------
create table students(sno int,name varchar(20),branch varchar(10),age int null);
insert into students values (1,"krishna","cse",22),(3,"sunny","ece",28),(5,"raja","cse",19);
insert into students(sno,name,branch) values (2,"omkar","eee"),(4,"suresh","civil");
select * from students;
select * from students where age is null;
-------------------------
create table orders(
id int primary key auto_increment,
product_name varchar(30) unique check (length(product_name)>10),
product_price int not null default 0 check (product_price>1000)
);
---------------------------
create table student(sno int,name varchar(40),email varchar(30));
insert into student values(1,"krishna reddy","krishna@gmail.com"),(2,"omkar naidu","omkar@gmail.com"),(3,"sunny chowdary","sunny@gmail.com"),(4,"venkatesh reddy","venkatesh@gmail.com");
select * from student;
select sno,upper(replace(replace(name,"reddy","  "),"naidu"," ")) as name,lower(email) as email from student 
where name like "%reddy" or name like "%naidu";
----------------------
create table employees(sno int,email varchar(20),mobile varchar(30));
insert into employees values (1,"krishna@gmail.com","9676287628"),(2,"omkar@gmail.com","789-567-2345"),(3,"sunny@gmail.com","987-654-4567");
select substring_index(email,"@",1) as name from employees where mobile like "___-___-____" ;