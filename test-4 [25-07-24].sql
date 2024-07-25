create database wkt4;
use wkt4;
-- 1 
create table employees(eid int,ename varchar(20),esalary int);
create table department(did int,dname varchar(20),dage int);
insert into employees values(1,"krishna",40000),(2,"raja",30000),(3,"srinu",25000);
insert into department values(1,"manger",10),(2,"it",7),(3,"hr",6);
-- inner join
select employees.ename,department.dname
from employees
join department on employees.eid=department.did
where department.dname like "%a%";
-- 2
create table employees1(eid int,ename varchar(20),esalary int);
insert into employees1 values(1,"krishna",40000),(2,"raja",30000),(3,"srinu",25000);
create table department1(did int,dname varchar(20),hiredate date);
insert into department1 values(1,"accounting","2023-09-24"),(2,"manger","2023-07-21"),(3,"research","2023-08-24");
-- inner join
select employees1.ename,department1.hiredate
from employees1
join department1 on employees1.eid=department1.did
where department1.hiredate>"2023-08-24" and (department1.dname="accounting" or department1.dname="research");
-- 3
create table employee2(empno int,ename varchar(30),deptno int,mgr varchar(10));
insert into employee2 values(10,"krishna",10,"hr"),(2,"raja",30,"manger"),(3,"srinu",22,"it");
-- self join
select a.ename as namee,b.mgr as designation
from employee2 as a,employee2 as b
where a.empno=b.deptno and b.deptno in (10,20);
-- 4
create table employee5(eid int,ename varchar(20),eage int);
create table department5(did int,dname varchar(20),dsalary int);
insert into employees values(1,"krishna",22),(2,"raja",24),(3,"srinu",25);
insert into department values(1,"manger",30000),(3,"it",20000),(4,"hr",10000);
-- left join
select eid,ename,eage,did,dname,dsalary 
from employee5
left join department5
on employee5.eid=department5.did;
-- 5 right join
select eid,ename,eage,did,dname,dsalary 
from employee5
right join department5
on employee5.eid=department5.did;
