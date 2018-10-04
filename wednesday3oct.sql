use HR;

--Q1 find employees having salary greater than the average salary

select * from employees;

select avg(employees.salary) from employees;

select employees.first_name,employees.last_name from employees where salary>(
select avg(employees.salary) from employees);

--Q2 find the names of employees who are working as accountant

select * from employees;


select * from jobs;

select jobs.job_id from jobs where job_title like '%accountant%';
select employees.first_name,employees.last_name from employees where employees.job_id=(select jobs.job_id from jobs where job_title = 'accountant'); 

select employees.first_name,employees.last_name from employees inner join jobs on employees.job_id=jobs.job_id where job_title like '%accountant%';



--Q3 find details of employees where first name contain e as a second character from end of line;

select * from employees where employees.first_name like '%e_';


select * from employees where employees.first_name like '_a____c%a';

--IN operator 

--find the manager id of departments shipping it and finance

select * from departments;

select departments.manager_id from departments where departments.department_name='shipping' or departments.department_name='it' or departments.department_name='finance';

select departments.manager_id from departments where departments.department_name in ('shipping','it','finance');

select departments.manager_id from departments where departments.department_name not in ('shipping','it','finance');


--list the country names in which the region id is greater than 1

select * from countries;

select countries.country_name from countries where countries.region_id>1;

--list all thedepartment names of  location in us using subquery


select * from locations;
select * from departments;

select departments.department_name from departments where departments.location_id in(select locations.location_id from locations where locations.country_id='US');

select * from employees;


--find employees who are manager

select manager_id from  employees;

select employees.first_name,employees.last_name from employees where employees.employee_id in(select manager_id from  employees);

--join multiple tables

--list all cities of region asia

select * from regions;

select * from countries;

select * from locations;

select regions.region_id from regions where regions.region_name='asia';

select locations.city from locations 
inner join countries 
on locations.country_id=countries.country_id 
inner join regions 
on countries.region_id=regions.region_id 
where  regions.region_name='asia';

--show the details of those employees who contain a letter m to their first name also display lastname department name city and state_province 

select * from employees

select * from departments

select * from locations

select e.first_name,e.last_name,d.department_name,l.city,l.state_province 
from employees as e
inner join departments as d 
on e.department_id=d.department_id 
inner join locations as l 
on d.location_id=l.location_id where e.first_name like '%m%';

--what is den raphaelys department name 

select departments.department_name from departments where departments.department_id=(select employees.department_id from employees where employees.first_name ='den' and employees.last_name='raphaely');

select e.first_name,e.last_name,d.department_name
from employees as e
inner join departments as d 
on e.department_id=d.department_id 
where e.first_name ='den' and e.last_name='raphaely'

--having clause

--show the name of departments in which the no of employees are more than 3

select departments.department_name ,count(employee_id) from employees inner join departments on employees.department_id=departments.department_id group by departments.department_name having count(employee_id)>3;

--show the regions in which the company is working in more than 4 cities

select * from regions;

select * from locations;

select r.region_name,count(l.city) from locations l
inner join countries c
on l.country_id=c.country_id 
inner join regions r
on c.region_id=r.region_id group by r.region_name having count(l.city) >4;

