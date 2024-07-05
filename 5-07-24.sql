create database sample;
use sample;
create table employee(id int,name varchar(20),salary int);
desc employee
insert into employee values(1,"krishna",40000);
insert into employee(salary,id,name) values (30000,2,"venkat");
select*from employee;
insert into employee values(3,"reddy",60000);
insert into employee values(4,"ankitha",35000),(5,"sunny",25000),(6,"omkar",10000);
select*from employee;
create table maxsal(id int,name varchar(30));
insert into maxsal(id,name) select id,name from employee where salary>30000
select * from maxsal;
set sql_safe_updates=0;
update employee set id=7 where salary=10000;
delete from employee where id=7;
select*from employee;
create table products(
id int,
name varchar(30) not null,
price int not null default 0
);
insert into products values (1,"vinay",3000);
select * from products;
create table products1(
id int key auto_increment,
name varchar(30) not null,
price int not null default 0
);
insert into products1 values(1,"sai",5000);
insert into products1 (name,price) values ("krish",4000);
select * from products1;

