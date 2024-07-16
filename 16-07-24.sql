use krishna;
-- comparison op --
create table employee(id int key auto_increment,name varchar(40),salary int);
insert into employee(name,salary) values ("krishna",30000),("venkat",20000),("sai",10000),("raja",15000);
select *from employee where salary=10000;
select *from employee where salary!=10000;
select *from employee where salary>15000;
select *from employee where salary>=15000;
select *from employee where salary<15000;
select *from employee where salary<=15000;
-- logical opr --
select * from employee where salary>15000 and id=1;
select * from employee where salary=10000 or id=3;
select * from employee where not salary =15000;
-------
alter table employee add column age int;
set sql_safe_updates=0;
update employee set age=22 where salary > 15000;
-- null opr --
select * from employee where age is null;
select * from employee where age is not null;
-- between opr --
select * from employee where salary between 15000 and 30000;
-- in opr --
select * from employee where salary in (15000,30000);
-- case opr --
select *,
  case
     when salary >10000 then "1x"
     when salary >20000 then "2x"
  else 0
  end as bonus
  from employee;
  -- string functions --
  create table student1(fname varchar(10),lname varchar(20),age int);
  insert into student1 values("krishna","ch",23),("raja","m",19),("omkar","ch",20);
  select concat(fname," ",lname) as full_name from student1;
  select fname,lname,concat(fname," ",lname,"(",age,")") as full_name from student1;


