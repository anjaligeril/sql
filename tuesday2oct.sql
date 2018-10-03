
-- stored procedure for total of 3 numbers

create procedure sp_add3numbers2
@num1 int,
@num2 int,
@num3 int,
@result int out 
as 
set @result= @num1+@num2+@num3;

--EXECUTION OF STORED PROCEDURE

declare @value int;
exec sp_add3numbers2 1,2,3,@value out;
select @value;


---function for total 3 numbers


CREATE FUNCTION fn_total(@val1 int,@val2 int,@val3 int)
RETURNS INT
AS
BEGIN
	DECLARE @TOTAL INT
	SET @TOTAL=@VAL1+@VAL2+@VAL3
	RETURN @TOTAL
END;


SELECT DBO.fn_total(1,1,1);


--AVERAGE OF 3 NUMBERS

CREATE FUNCTION fn_AVG(@val1 int,@val2 int,@val3 int)
RETURNS INT
AS
BEGIN
	DECLARE @AVG INT
	SET @AVG=(@VAL1+@VAL2+@VAL3)/3
	RETURN @AVG
END;

SELECT DBO.fn_AVG(1,2,3) AS AVERAGE;


--TABLE VALUED FUNCTION

USE HR;

--TABLE VALUED FUNCTION THAT RETURNS A LIST OF EMPLOYEES FROM A SPECIFIC DEPARTMENT

CREATE FUNCTION FN_EMPLOYEELIST(@DEPT_NAME VARCHAR(30) )
RETURNS TABLE
AS 

	RETURN(SELECT employees.FIRST_NAME,employees.last_name FROM employees INNER JOIN departments ON employees.department_id=departments.department_id WHERE DEPARTMENTS.department_name=@DEPT_NAME)

--EXECUTION OF TABLE VALUED FUNCTION

SELECT * FROM FN_EMPLOYEELIST('SHIPPING');

SELECT employees.FIRST_NAME,employees.last_name FROM employees INNER JOIN departments ON employees.department_id=departments.department_id WHERE department_name='SHIPPING';


--CREATE A FUNCTION TO FIND THE DIFFERENCE BETWWEN MAX AND MIN SALARY FOR SPECIFIC JOB TITILES 


SELECT * FROM JOBS;

SELECT J.MAX_SALARY-J.MIN_SALARY AS DIFF_SALARY FROM jobs J WHERE J.job_title='PRESIDENT'

CREATE FUNCTION FN_DIFFSALARY(@JOB_TITLE VARCHAR(35))
RETURNS TABLE
AS
RETURN(SELECT J.MAX_SALARY-J.MIN_SALARY AS DIFF_SALARY  FROM jobs J WHERE J.job_title=@JOB_TITLE)

SELECT * FROM FN_DIFFSALARY('PRESIDENT');

--STRING FUNCTION


SELECT UPPER('abv');

SELECT LOWER('ABV');

SELECT LEN('ANJALI');

SELECT SUBSTRING('ANJALI',1,2);

SELECT SUBSTRING('ANJALI',-1,2);

--get the initial of employee and last name in a single column

SELECT SUBSTRING(employees.first_name,1,1)+' '+employees.last_name as initial from employees;

--date function

select SYSDATETIME();

select datepart(year,'2007-10-30')
select datepart(month,'2007-10-30')
select datepart(day,'2007-10-30')


--find the number of employees hired in 2005

select count(*) from employees where datepart(year,hire_date)=2005;

select count(*) from employees where hire_date between '2005-01-01' and '2005-12-31';

--calculate experience

select employees.first_name, DATEDIFF(year,hire_date,sysdatetime()) as experience from employees ;

--experience in ascending order/descending order

select employees.first_name, DATEDIFF(year,hire_date,sysdatetime()) as experience from employees order by experience ;


select employees.first_name, DATEDIFF(year,hire_date,sysdatetime()) as experience from employees order by experience desc;


--list the counties located in europe

use HR;

select * from regions;

select * from countries;

select countries.country_name from countries inner join regions on countries.region_id=regions.region_id where regions.region_name='europe';


select countries.country_name from countries where countries.region_id=(select regions.region_id from regions where regions.region_name='europe');

