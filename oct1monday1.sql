use hr;

select * from countries;

select * from departments;


select * from job_history;

select * from jobs;

select * from locations;

select * from regions;

--sort based on first name and last name

select * from employees order by first_name,last_name desc;

--FIND NO OF EMPLOYEES WHO ARE NOT GETTING COMMISSION

select count(employee_id) as no_commission from employees where commission_pct IS NULL;

--MAXIMUM SALARY IN EMPLOYEE TABLE

SELECT MAX(SALARY) AS MAX_SALARY FROM EMPLOYEES;

--FIND NAME OF EMPLOYEE WHO GETS MAX SALARY

SELECT FIRST_NAME,LAST_NAME FROM EMPLOYEES WHERE SALARY=24000;

SELECT FIRST_NAME,LAST_NAME FROM EMPLOYEES WHERE SALARY=(SELECT MAX(SALARY) AS MAX_SALARY FROM EMPLOYEES)

--name of departments in location california  using joins and sub queries

select departments.department_name,locations.state_province from departments inner join locations on departments.location_id=locations.location_id
where locations.state_province='california';

select d.department_name,l.state_province from departments as d inner join locations as l on d.location_id=l.location_id
where l.state_province='california';


select department_name from departments  where location_id=(select location_id from locations where state_province ='california');



---count the no of salaried employees in each department

select * from employees;

select department_id,count(employee_id) from employees where commission_pct is null group by department_id ;


--show the name of department with no of employees


select d.department_name,count(employee_id) as no_of_employee from departments as d inner join employees as e on d.department_id=e.department_id group by d.department_name;


--show the names of employees who contain a letter k in their first name 

select employees.first_name ,employees.last_name from employees where first_name like '%k%';