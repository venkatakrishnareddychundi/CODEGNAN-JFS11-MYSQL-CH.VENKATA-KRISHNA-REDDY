use krishna
create table fruits_shop(
id int key auto_increment,
name varchar(30) not null,
quantity int not null default 0,
counterNO int not null);
insert into fruits_shop(name,quantity,counterNO) values("apple",56,11),("mango",60,12),("banana",80,13),("watermelon",25,14);
select * from fruits_shop;
create table apple_store(quantity int,counterNO int);
create table mango_store(quantity int,counterNO int);
insert into apple_store(quantity,counterNO) select quantity,counterNO from fruits_shop where name="apple";
insert into mango_store(quantity,counterNO) select quantity,counterNO from fruits_shop where name="mango";
select * from apple_store;
select * from mango_store;
