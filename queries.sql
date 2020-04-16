-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT DISTINCT p.ProductName, c.CategoryName
From Product as p
JOIN Category as c ON p.CategoryId = c.Id
GROUP BY p.ProductName
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.Id, s.CompanyName
FROM "Order" as o
JOIN Shipper as s ON o.ShipVia = s.Id
WHERE o.OrderDate < "2012-8-9";
-- 429? I get 2323
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.ProductName, p.QuantityPerUnit
FROM "OrderDetail" as oD
JOIN Product as p
WHERE oD.OrderId = 10251
ORDER by p.ProductName 
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT od.Id as "OrderID", c.CompanyName, e.LastName as "EmployeLastName"
FROM "Order" as oD
JOIN Customer as c ON Od.CustomerId = c.Id
JOIN Employee as e ON Od.EmployeeId = e.Id