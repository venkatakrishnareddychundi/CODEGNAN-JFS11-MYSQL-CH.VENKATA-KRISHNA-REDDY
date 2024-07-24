use krishna;
create table emp21(empid int,ename varchar(20),dep_id int);
insert into emp21 values(1,"venkat",1),(2,"krishna",2),(3,"reddy",3);
select *from emp21;
create table dep(d_id int,dname varchar(20));
insert into dep values(1,"hr"),(2,"it"),(4,"sales");
select *from dep;
-- inner join
select d_id,ename,dname
from emp21
inner join dep
on emp21.dep_id=dep.d_id;
-- left join
select ename,dname
from emp21
left join dep
on emp21.dep_id=dep.d_id;
-- right join
select ename,dname
from emp21
right join dep
on emp21.dep_id=dep.d_id;
-- full join
select ename,dname
from emp21
left join dep
on emp21.dep_id=dep.d_id
union
select ename,dname
from emp21
right join dep
on emp21.dep_id=dep.d_id;
-- cross join
select ename,dname2	
from emp21
cross join dep;
-- self join
create table emp22(eid int,name varchar(20),mid int);
insert into emp22 (eid,name) values(1,"venkat");
insert into emp22 values(2,"krishna",1),(3,"reddy",1),(4,"omkar",2),(5,"naidu",2);
select *from emp22;
select a.name as namee,b.mid as mmmid
from emp22 as a,emp22 as b
where a.eid=b.mid;