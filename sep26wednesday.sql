use learningsql;


---stored procedure

create procedure SP_emp_dp1 as select * from employee where dept_no='d1';

exec SP_emp_dp1;

create procedure SP_emp @dept_no_by_user varchar(20) as select * from employee where dept_no=@dept_no_by_user;


exec SP_emp @dept_no_by_user='d2';


--indexing

select * from employee;

create clustered index ix_emp_no on employee (emp_no asc);

create clustered index ix_emp on employee (dept_no ,emp_fname);

select * from department;

create nonclustered index ix_dept_no on department (dept_no desc);

select * from student;

create clustered index ix_age on student (age);

