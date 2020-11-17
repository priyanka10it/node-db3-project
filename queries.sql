-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

    select P.Id,P.ProductName,C.Id,C.CategoryName from Product as P
    join Category as C on P.CategoryId=C.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

    select o.Id, s.CompanyName from [Order] as o
    join Shipper as s on o.ShipVia =s.Id 
    where o.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

    select ProductName, Quantity from Product
    join OrderDetail on Product.Id = OrderDetail.ProductId 
    where OrderDetail.OrderId = '10251';


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

    select O.Id, C.CompanyName, E.LastName from [Order] as O
    join Customer as C on O.CustomerId = C.Id
    join Employee as E on O.EmployeeId = E.Id;
