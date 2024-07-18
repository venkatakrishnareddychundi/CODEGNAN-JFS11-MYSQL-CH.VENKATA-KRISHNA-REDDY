-- string functions in mysql ---
use krishna;
create table emp5(id int,empname varchar(50),city varchar(20));
insert into emp5 values (1,"sai vardhan","londan"),(2,"vishnu vardhan","londen"),(3,"venkat","hyderabad"),(4,"krishna","chennai");
select * from emp5;
-- concat --
select concat("hello"," ","world!") as print;
select id,concat(empname," place is ",city) as print from emp5;
-- concat_ws --
select concat_ws(",","krishna","venkat","reddy");
select concat_ws(",",id,empname,city) as print from emp5;
-- lower and upper --
select lower("HELLO") as lowercase;
select upper("helLo") as uppercase;
select id,upper(empname) as uppercase from emp5;
select id,city,lower(empname) as lowercase from emp5;
-- charcter length --
select length("krishna") as length;
select char_length("krishna") as char_length;
select id,empname,length(empname) as length,char_length(empname) as char_length from emp5;
-- substring --
select substring("krishna",2,4) as sub;
select id,substring(empname,2,4) as sub_string from emp5;
-- reverse --
select reverse("krishna")as rev;
select id,empname,reverse(empname) as rev from emp5;
-- replace --
select replace("tho krishna","tho","the") as rep;
select id,replace(empname,"vardhan","krishna") as newname from emp5;
-- like --
select "krishna" like "%na" as xyz;
select "krishna" like "k__shna" as xyz;
select id,empname from emp5 where city like "%n";
select id,empname from emp5 where city like "lond_n";