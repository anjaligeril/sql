--2.	Once you have finished this, create a query that displays :CompanyName, Address, of the customer along with the total for each order that the customer has made. Save this query as a sql script called Question2.sql to your desktop

select customers.address from Customers inner join orders on customers.CustomerID=orders.CustomerID 

select count(customerid) from orders group by customerid;

select c.CompanyName,c.Address,count(o.customerid) as total_no_of_orders from Orders o join Customers c on o.CustomerID=c.CustomerID group by o.CustomerID ;

select Customers.CompanyName,Customers.Address,count(Orders.customerid) as total_no_of_orders from Orders   join Customers  on orders.CustomerID=Customers.CustomerID group by orders.CustomerID ;

select Customers.CompanyName,Customers.Address from Customers inner join ( select count(orders.OrderID) as total_no_of_orders from Orders group by orders. CustomerID) on customers.CustomerID=orders.CustomerID;

Select Customers.CompanyName,Customers.Address,Customers.City,OrderDetails.ProductId, count(ordersDetails.OrderID) as Total
from Customers JOIN Orders on Customers.CustomerId = Orders.CustomerId JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderId;


Select Customers.CompanyName,Customers.Address,Customers.City,OrderDetails.ProductId, OrderDetails.UnitPrice  as Total
from Customers JOIN Orders on Customers.CustomerId = Orders.CustomerId JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderId;
 

 select c.CompanyName,c.Address from Customers c inner join ( select count(o.OrderID) as total_no_of_orders from Orders o group by o. CustomerID)  on c.CustomerID=o.CustomerID;

 Select Customers.CompanyName,Customers.Address,Customers.City,OrderDetails.ProductId, OrderDetails.UnitPrice , OrderDetails.Quantity as Total
from Customers JOIN Orders on Customers.CustomerId = Orders.CustomerId JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderId;


select * from Customers inner join (select count(orders.customerid) from orders group by orders.customerid) orders  on customers.CustomerID=orders.CustomerID;


select Customers.CompanyName,Customers.Address,count(Orders.customerid) as total_no_of_orders from Customers  left join Orders  on orders.CustomerID=Customers.CustomerID group by orders.customerid  ;
