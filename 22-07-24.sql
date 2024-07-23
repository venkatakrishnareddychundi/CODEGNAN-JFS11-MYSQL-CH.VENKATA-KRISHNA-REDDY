use krishna;
create table emp10(
	id int,
    datee date
 );   
insert into emp10 values (101,"2024-07-22");
select *from emp10;
select curdate();
select current_date;
select current_date();
select adddate("2024-01-01",interval 3 month);
select date_add("2024-01-01",interval 3 year);
select date_add("2024-01-01",interval 3 day) as new_date;
select datediff("2024-02-01","2024-03-01") as diff;
select datediff("2024-02-01","2024-01-01") as diff;
----- time -----------------
create table emp11(
id int,
timee time);
insert into emp11 values (1,"03:03:03");
insert into emp11 values (1,"25:03:03");
select * from emp11;
select curtime();
select addtime("10:10:10","01:01:01");
select subtime("10:10:10","01:01:01");
select timediff("10:10:10","01:01:01");
select time_to_sec("01:01:10");
------- timestamp ----------
select current_timestamp();
select current_timestamp;
select timestampdiff(month,"2024-02-01 10:10:10","2024-01-01 10:10:10");
select timestampdiff(day,"2024-02-01 10:10:10","2024-01-01 10:10:10") as day;
create table emp12(
id int,
ts timestamp
);
insert into emp12 values (1,"2024-01-01 10:10:10");
create table emp1(
id int,
ts timestamp default current_timestamp
);
insert into emp1(id) values(2);
select*from emp1;
create table emp14(
id int,
ts timestamp default current_timestamp on update current_timestamp
);
insert into emp14(id) values(3);
select * from emp14;
set sql_safe_updates=0;
update emp14 set id=4;
select * from emp14;