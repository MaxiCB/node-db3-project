-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select p.ProductName, c.CategoryName
from Product as p
join Category as c
    on p.CategoryId = c.Id
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Id, ShipName, OrderDate FROM [Order] where OrderDate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select d.quantity, p.ProductName
from [OrderDetail] as d 
join [Product] as p
    on p.Id = d.ProductId
where d.OrderId = '10251'
order by p.ProductName
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select distinct od.OrderId, c.CompanyName, e.LastName
from [OrderDetail] as od
join [Order] as o
    on od.OrderId = o.Id
join [Customer] as c
    on o.CustomerId = c.Id
join [Employee] as e
    on o.EmployeeId = e.Id

-- Stretch Goals --
SELECT COUNT(*) TotalCount, p.CategoryID, c.CategoryID
from Products as p
join Categories as c
	 on c.CategoryID = p.CategoryID
where p.CategoryID = c.CategoryID
group by p.CategoryID, c.CategoryID
-- --
SELECT COUNT(*) TotalCount, p.OrderID, p.Quantity
from OrderDetails as p
group by p.OrderID