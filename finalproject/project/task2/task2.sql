create database task2;

use task2;

select * from customers;

select * from orderdetails;

select * from orders;

select * from products;

--2.	Once you have finished this, create a query that displays :CompanyName, Address, of the customer along with the total for each order that the customer has made. Save this query as a sql script called Question2.sql to your desktop

select customers.CompanyName, customers.address from Customers inner join orders on customers.CustomerID=orders.CustomerID ;

select count(customerid)as total_no_of_orders from orders group by customerid;

select Customers.CompanyName,Customers.Address,count(orders.CustomerID) as total_no_of_orders 
from Customers  
inner join Orders  on Customers.CustomerID=Orders.CustomerID 
group by Orders.CustomerID  ;



--3.	Create a View that joins the customers table to the orders table and have the view show CompanyName, Address, City and OrderDate. Save the View as CustomersView.


create view Customersview as 
select Customers.CompanyName,Customers.Address,Customers.City,Orders.OrderDate from Customers inner join Orders on Customers.CustomerID=Orders.CustomerID;

select * from Customersview;

--4.	Once the CustomersView is created query the view to show only Customers from London.


select * from CustomersView where CustomersView.City='London';


--5. Create a stored procedure will return a list of products based on the parameter values that you pass to stored procedure. Save the stored procedure as ProductSearch.


create procedure sp_ProductSearch @categoryid_by_user varchar(50) as 
select * from Products where CategoryID=@categoryid_by_user;

exec sp_ProductSearch @categoryid_by_user='1';



--7 Create a nonclustered index on the primary key for the Customers Table and Create a clustered index on the CompanyName field of the Customers table.

select * from Customers;

create nonclustered index ix_CustomerID on Customers (CustomerID);

create clustered index ix_CompanyName on Customers(CompanyName);

