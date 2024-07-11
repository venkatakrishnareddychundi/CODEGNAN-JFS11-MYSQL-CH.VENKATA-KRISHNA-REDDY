use sample;
create table student_data(
id int not null,
stuname varchar(20) not null,
stusubject varchar(10) not null,
marks int default 0
);
desc student_data;
insert into student_data values (1,"krishna","english",85),(1,"krishna","maths",98),(1,"krishna","social",90);
insert into student_data values (2,"omkar","english",90),(2,"omkar","maths",75),(2,"omkar","social",65);
insert into student_data values (3,"suresh","english",85),(3,"suresh","maths",55),(3,"suresh","social",60);
insert into student_data values (4,"sunny","english",40),(4,"sunny","maths",30),(4,"sunny","social",45);
insert into student_data values (5,"gopi","english",45),(5,"gopi","maths",75),(5,"gopi","social",34);
select count(marks) from student_data;
select sum(marks) from student_data;
select avg(marks) from student_data;
select min(marks) from student_data;
select max(marks) from student_data;
select id,sum(marks) as total_marks from student_data group by id;
select id,marks as english_marks from student_data where stusubject="english";
select id,stuname,sum(marks) as total_marks from student_data group by id,stuname;
create table final_marks(
id int primary key,
student_name varchar(30),
student_marks int
);
insert into final_marks select id,stuname,sum(marks) as total_marks from student_data group by id,stuname;
select * from final_marks;
select id,stuname,sum(marks) as total_marks from student_data group by id,stuname having total_marks>200;
select * from final_marks order by student_marks desc;