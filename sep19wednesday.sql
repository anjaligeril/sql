use learningsql;


-- operators check w3 schools

select * from student where age between 15 and 20;

select * from student where age>15;

select * from student where age>15 and age<20;

select * from student;

select * from employee;

select dept_no from employee;



--distinct clause  to eliminate the duplicate entries

select distinct dept_no from employee;

select count(distinct dept_no) from employee;


--- group by clause 

select dept_no from employee group by dept_no;

select * from employee group by dept_no;   -- error Column 'employee.emp_no' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.

select emp_no from employee group by dept_no;  --error

--count the number of employees in each departments

select count(dept_no) from employee group by dept_no;

10,000,000


select * from works_on;

---no: of employees working in each projects

select project_no,count(*) as 'No of employees' from works_on group by project_no;


select project_no,count(project_no) as 'No of employees'  from works_on group by project_no;

select * from student;

--changing structure of table


alter table student 
		add addr varchar(50) ;


alter table student 
		drop column addr;

alter table student 
		add phone varchar(50) ;

alter table student 
		drop column phone;