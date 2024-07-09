create database constraints;
use constraints;
-- primary key,unique,notnull examples --
create table users(userid int primary key,username varchar(50) not null,email varchar(100) unique);
insert into users values (1,"krishna","krishna@gmail.com");
-- insert into users values (1,"venkat","venkat@gmail.com"); [duplicate entry example] ---
select * from users;
-- insert into users values (2,"venkat","krishna@gmail.com"); [duplicate entry unique example --
-- insert into users (userid,email) values (1,"krishna@gmail.com");[username doesn't have a default value notnull example] --
desc users;
-- check example --
create table voters(voter_id int primary key,name varchar(30) not null,age int check(age>18));
insert into voters values (100,"krishna",25);
insert into voters values (101,"venkat",18);
insert into voters values (102,"krishna",26);
insert into voters values (103,"venkat",24);
select * from voters;
-- auto increment,default examples --
create table emp(id int primary key auto_increment,name varchar(30) not null,address varchar(50) default "hyderbad");
insert into emp(name,address) values ("krishna","chennai");
insert into emp(name) values ("venkat");
insert into emp(name) values ("sai");
insert into emp(name) values ("venkat");
select * from emp;