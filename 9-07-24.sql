use krishna
create table emp (id int primary key,emp_name varchar(50) not null,mobile bigint unique,address varchar(100) default "hyderabad");
desc emp;
insert into emp(id,emp_name,mobile,address) values (1,"krishna",9876971252,"ongole");
select * from emp;
create table emp2(id int primary key auto_increment,emp_name varchar(50) not null,mobile bigint unique,address varchar(100) default "hyderabad");
insert into emp2(emp_name,mobile) values ("venkat",738264327793);
select * from emp2;
create table emp3(id int primary key auto_increment,emp_name varchar(50) not null,age int not null,salary bigint,check(age>18));
insert into emp3(emp_name,age,salary) values ("krishna",19,60000);
insert into emp3(emp_name,age,salary) values ("venkat",17,40000);
insert into emp3(emp_name,age,salary) values ("sai",28,70000);
select * from emp3;