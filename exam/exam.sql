use pubs;

--Question 2

select * from authors;

select authors.au_fname,authors.au_lname,authors.address,authors.phone from authors where state='CA';

--Question 2b

create view authorsView as
select authors.au_fname,authors.au_lname,authors.address,authors.phone from authors where state='CA';

select * from authorsView;

--Question 3

select * from titles;

select count(*)as no_of_records from titles;

create view Recordcount as
select count(*)as no_of_records from titles;

select * from Recordcount;


--Question 4

select * from authors;

select * from titleauthor;

select * from titles;

select * from authors a inner join titleauthor ta on a.au_id=ta.au_id inner join titles t on ta.title_id=t.title_id;

--Question 5

select * from authors a inner join titleauthor ta on a.au_id=ta.au_id inner join titles t on ta.title_id=t.title_id where state='UT';

--question 6 

select * from employee;

select * from publishers;

select * from employee e where e.pub_id=(select pub_id from publishers p where p.city='washington');

--question 7

create trigger trg_nodropdatabase 
on all server
for drop_database
as
begin 
raiserror('You cant delete database from the server',16,1);
rollback;
end;

drop database books;

--Question 8

create trigger trg_salesdelete
on sales 
instead of delete 
as
begin 
raiserror('you cant delete records from the sales table',16,1)
rollback
end;

select * from sales;

delete from sales where stor_id=6380;


--Question 9

create procedure sp_multiply
@num1 int,
@num2 int,
@result int out
as
set @result= @num1*@num2;


declare @value int;
exec sp_multiply 2,3,@value out;
select @value as value_of_multiplication;


--Question 10

select * from employee;

select * from publishers;

select * from employee e where e.pub_id=(select pub_id from publishers p where p.pub_name='New moon Books' );

create function fn_employeelist(@pub_name varchar(40))
returns table
as
return(select * from employee e where e.pub_id=(select pub_id from publishers p where p.pub_name=@pub_name ));

select * from fn_employeelist('Binnet & Hardley');

--question 11

select * from authors;

select distinct(state) from authors ;

--question 12

select * from jobs;

select max_lvl-min_lvl from jobs where job_desc='Marketing Manager';

--question 13

select * from employee;

select * from employee where datepart(year,hire_date)=1989;

--question 14

select * from employee e order by e.fname,e.lname desc;

--question 15

select * from employee;

select * from jobs;

select e.fname from employee e where e.job_id=(select job_id from jobs j where j.job_desc='Designer');

--question 16

select * from sales;


select ord_num ,sum(qty) as total_qty from sales s group by ord_num;


--question 17

select * from discounts;

select avg(discount) as average_discount from discounts;

--question 18 


Select * from authors;

select * from titleauthor;

select a.au_fname from authors a inner join titleauthor ta on a.au_id=ta.au_id where ta.royaltyper in (30,40,50) ;

select a.au_fname from authors a where a.au_id in (select ta.au_id from titleauthor ta where ta.royaltyper in (30,40,50));


--question 19

select * from discounts;

create clustered index ix_discounttype on discounts(discounttype asc);

--question 20

create nonclustered index ix_aufname on authors(au_fname asc);

create nonclustered index ix_pubid on employee(pub_id asc);



