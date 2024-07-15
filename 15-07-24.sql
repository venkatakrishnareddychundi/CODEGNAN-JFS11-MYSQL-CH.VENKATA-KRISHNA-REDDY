use krishna;
create table customers(
id int key auto_increment,
name varchar(20),
age int not null);
insert into customers(name,age) values ("krishna",23),("venkat",24),("sai",18),("gopi",17);
select * from customers;
select name,(id+age) as newdata from customers;
select name,id,age,(age-id) as newdata from customers;
select name,id,age,(age/2) as newdata from customers;
select name,id,age,(age%2) as newdata from customers;