use learningsql;


select * from works_on;

select * from employee;


select works_on.emp_no,employee.emp_fname + employee.emp_lname as 'full name',works_on.project_no,works_on.job from works_on inner join employee on works_on.emp_no=employee.emp_no;



create table student1(
stu_id varchar(20) not null,
stu_name varchar(30) not null,
st_email varchar(30) not null,
addr varchar(40) ,
ad_id varchar(10) not null
);


create table advisor(
ad_id varchar(10) not null,
name varchar(20) not null,
dept_name varchar(20) not null
);

drop table student1;

drop table advisor;
insert into student1 values('s1','john','gggg','ggg','ad1');

insert into student1 values('s2','jane','gggjjjjg','gl;;l;gg','ad2');

insert into student1 values('s3','kia','gggjjjjg','gl;;l;gg','ad6');


insert into advisor values('ad1','aden','hhhh');

insert into advisor values('ad2','geril','hhhyyyh');


insert into advisor values('ad3','lea','hhhhhhh');

select * from student1;

select * from advisor;

--inner join

select student1.stu_name,student1.addr,advisor.name,advisor.dept_name  from student1 inner join advisor on advisor.ad_id=student1.ad_id;

--left join

select student1.stu_name,student1.addr,advisor.name,advisor.dept_name  from advisor left join student1 on advisor.ad_id=student1.ad_id;

select student1.stu_name,student1.addr,advisor.name,advisor.dept_name  from student1 left join advisor on advisor.ad_id=student1.ad_id;

select student1.stu_name,student1.addr,advisor.name,advisor.dept_name  from student1 right join advisor on advisor.ad_id=student1.ad_id;

select student1.stu_name,student1.addr,advisor.name,advisor.dept_name  from advisor full outer join student1 on advisor.ad_id=student1.ad_id;

select * from works_on where job<>'null';

create view new_workson as select * from works_on where job is not null;

select * from new_workson;

create view stu_adv as 
select student1.stu_name,student1.addr,advisor.name,advisor.dept_name  from advisor left join student1 on advisor.ad_id=student1.ad_id;

select * from stu_adv;

select * from stu_adv where stu_name='john';
