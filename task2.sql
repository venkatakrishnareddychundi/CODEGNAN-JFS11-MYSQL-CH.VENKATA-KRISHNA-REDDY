create database amazon_clone;
use amazon_clone;
create table user_accounts(id int primary key,name varchar(30) not null,email_id varchar(20) null,mobile_no bigint not null);
create table prime_accounts(id int primary key,name varchar(30) not null,email_id varchar(20) null,mobile_no bigint not null);
create table orders(id int not null,
product_name varchar(40) primary key,
final_price int default 0,
address varchar(80) not null,
foreign key(id) references user_accounts(id)
);
create table prime_orders(id int not null,
product_name varchar(40) primary key,
final_price int default 0,
address varchar(80) not null,
foreign key(id) references prime_accounts(id)
);
create table products(product_id int not null,
product_name varchar(40) not null,
product_price int not null,
discount_price int not null,
foreign key(product_name) references orders(product_name)
);
insert into user_accounts values (1,"krishna","krishna@gmail.com",9843979268);
insert into prime_accounts values (100,"venkat","venkat@gmail.com",9243979268);
insert into orders values (1,"soap",200,"hyderbad");
insert into prime_orders values(100,"brush",50,"chennai");
insert into products values (1,"soap",200,190);
select * from user_accounts;
select * from prime_accounts;
select * from orders;
select * from prime_orders;
select * from products;
insert into orders values (1,"rice",200,"banglore");
insert into prime_orders values (100,"shoes",1000,"banglore");
insert into products values (1,"rice",200,190);
insert into user_accounts values (2,"gopi","gopi@gmail.com",7863979268);
insert into prime_accounts values (101,"suresh","suresh@gmail.com",8643979268);