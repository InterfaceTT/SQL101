USE AdventureWorksLT2008;

-- Task 1 Question 1
SELECT c.CustomerID
, FirstName + ' ' + LastName AS FullName
, CountryRegion
, PostalCode
, SUBSTRING(c.SalesPerson, CHARINDEX('\', c.SalesPerson, 1)+1, 10) AS SalesPersonLogin
FROM SalesLT.Customer c
	INNER JOIN SalesLT.CustomerAddress ca
		ON c.CustomerID = ca.CustomerID
	INNER JOIN SalesLT.Address a
		ON a.AddressID = ca.AddressID
WHERE PostalCode LIKE '95[0-9][0-9][0-9]';

-- Task 1 Question 2
SELECT soh.SalesOrderNumber
, DATENAME(mm, OrderDate) [Order Month]
, YEAR(OrderDate) [Order Year]
, DATEDIFF(DAY, soh.OrderDate, soh.DueDate) ProcessingDays
, p.Name [Product Name]
, (UnitPrice * OrderQty) - UnitPriceDiscount ItemTotal
FROM SalesLT.SalesOrderHeader soh
	INNER JOIN SalesLT.SalesOrderDetail sod
		ON soh.SalesOrderID = sod.SalesOrderID
	INNER JOIN SalesLT.Product p
		ON sod.ProductID = p.ProductID
WHERE SalesOrderNumber = 'SO71831';

