
create database learningsql;
 use learningsql;

CREATE TABLE employee  (emp_no INTEGER NOT NULL, 
                        emp_fname CHAR(20) NOT NULL,
                        emp_lname CHAR(20) NOT NULL,
                        dept_no CHAR(4) NULL)
CREATE TABLE department(dept_no CHAR(4) NOT NULL,
                        dept_name CHAR(25) NOT NULL,
                        location CHAR(30) NULL)
CREATE TABLE project   (project_no CHAR(4) NOT NULL,
                        project_name CHAR(15) NOT NULL,
                        budget FLOAT NULL)
CREATE TABLE works_on	(emp_no INTEGER NOT NULL,
                        project_no CHAR(4) NOT NULL,
                        job CHAR (15) NULL,
                        enter_date DATE NULL)
insert into employee values(25348, 'Matthew', 'Smith','d3')
insert into employee values(10102, 'Ann', 'Jones','d3')
insert into employee values(18316, 'John', 'Barrimore', 'd1')
insert into employee values(29346, 'James', 'James', 'd2')
insert into employee values(9031, 'Elsa', 'Bertoni', 'd2')
insert into employee values(2581, 'Elke', 'Hansel', 'd2')
insert into employee values(28559, 'Sybill', 'Moser', 'd1')
insert into department values ('d1', 'research','Dallas')
insert into department values ('d2', 'accounting', 'Seattle')
insert into department values ('d3', 'marketing', 'Dallas')
insert into project values ('p1', 'Apollo', 120000.00)
insert into project values ('p2', 'Gemini', 95000.00)
insert into project values ('p3', 'Mercury', 186500.00)
insert into works_on values (10102,'p1', 'analyst', '2006.10.1')
insert into works_on values (10102, 'p3', 'manager', '2008.1.1')
insert into works_on values (25348, 'p2', 'clerk', '2007.2.15')
insert into works_on values (18316, 'p2', NULL, '2007.6.1')
insert into works_on values (29346, 'p2', NULL, '2006.12.15')
insert into works_on values (2581, 'p3', 'analyst', '2007.10.15')
insert into works_on values (9031, 'p1', 'manager', '2007.4.15')
insert into works_on values (28559, 'p1', NULL, '2007.8.1')
insert into works_on values (28559, 'p2', 'clerk', '2008.2.1')
insert into works_on values (9031, 'p3', 'clerk', '2006.11.15')  
insert into works_on values (29346, 'p1','clerk', '2007.1.4')


select emp_no,emp_fname as 'first name',emp_lname as 'last name',dept_no from employee where dept_no='d1';


select emp_fname + emp_lname as 'full name' from employee;



create table student(
student_id integer not null,
student_status varchar(20) null,
student_name varchar(50) not null,
student_email varchar(50) not null
 );

insert into student values(1,'enrolled','john','john@gmail.com');
insert into student values('2','enrolled','john','john@gmail.com');

select * from student;

drop table student;

create table student(
student_id integer not null,
student_status varchar(20) null default 'entrolled',
student_name varchar(50) not null,
student_email varchar(50) not null
 );

insert into student(student_id,student_name,student_email) values(1,'john','john@gmail.com');

insert into student(student_id,student_status,student_name,student_email) values(2,'graduated','sam','sam@gmail.com');

select * from student;

drop table student;

create table student(
student_id integer IDENTITY(1,1),
student_status varchar(20) null default 'entrolled',
student_name varchar(50) not null,
student_email varchar(50) not null
 );

insert into student(student_name,student_email) values('john','john@gmail.com');

insert into student(student_name,student_email) values('sam','sam@gmail.com');

select * from student;

create table student(
student_id integer IDENTITY(1,1) primary key,
student_status varchar(20) null default 'entrolled',
student_name varchar(50) not null,
student_email varchar(50) not null
 );



 create table student(
student_id integer IDENTITY(1,1),
student_status varchar(20) null default 'entrolled',
student_name varchar(50) not null,
student_email varchar(50) not null,
age integer not null,
check(age between 18 and 65)
 );

 insert into student(student_name,student_email,age) values('john','john@gmail.com',19);


 select * from employee order by  emp_fname ;