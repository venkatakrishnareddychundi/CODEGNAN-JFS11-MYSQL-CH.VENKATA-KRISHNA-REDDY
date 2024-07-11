use constraints;
create table users1(userid int primary key not null,name varchar(20) not null,age int default 0);
create table orders(
orderid int primary key,
productname varchar(40),
price int default 0,
uid int not null,
foreign key(uid) references users1(userid)
);
insert into users1 values(1,"krishna",23),(2,"venkat",21);
insert into orders values(101,"soap",100,1),(102,"tooth paste",101,2);
insert into orders values(103,"tooth brush",70,2);
select * from users1;
select * from orders;