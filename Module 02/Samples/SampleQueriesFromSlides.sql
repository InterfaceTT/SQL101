USE AdventureWorksLT2008;

-- Inline Comments
SELECT name
, (ListPrice - StandardCost)  -- Calculate Standard Profit
, ProductModelID
FROM SalesLT.Product;

-- Block Comments
/*
This code retrieves all rows of the product table and displays the
list price increased by 10 percent, and the name of the product.
*/
SELECT name
, listprice,(listprice * 1.1)
FROM SalesLT.Product;

-- Identifying Columns
SELECT CustomerID
, LastName
, FirstName
, Phone
FROM SalesLT.Customer;

-- Inner Join
SELECT customer.customerid
, customer.firstname
, customer.lastname
, SalesOrderHeader.SalesOrderID
, SalesOrderHeader.OrderDate
FROM SalesLT.Customer
	INNER JOIN SalesLT.SalesOrderHeader
		ON customer.customerid = SalesOrderHeader.customerid;
		

-- Without table aliases
SELECT customer.customerid
, customer.firstname
, customer.lastname
, SalesOrderHeader.SalesOrderID
, SalesOrderHeader.OrderDate
FROM SalesLT.Customer
	INNER JOIN SalesLT.SalesOrderHeader
		ON customer.customerid = SalesOrderHeader.customerid;


-- With table aliases
SELECT c.customerid
, c.firstname
, c.lastname
, soh.SalesOrderID
, soh.OrderDate
FROM SalesLT.Customer AS c
	INNER JOIN SalesLT.SalesOrderHeader AS soh
		ON c.customerid = soh.customerid;

-- Outer Join Query
SELECT customer.customerid
, customer.firstname
, customer.lastname
, SalesOrderHeader.SalesOrderID
, SalesOrderHeader.OrderDate
FROM SalesLT.Customer
	LEFT OUTER JOIN SalesLT.SalesOrderHeader
		ON customer.customerid = SalesOrderHeader.customerid;
		
-- Self-referencing Join Query
SELECT cat.Name
, subcat.Name
FROM SalesLT.ProductCategory AS cat
	INNER JOIN SalesLT.ProductCategory AS subcat
		ON cat.ProductCategoryID = subcat.ParentProductCategoryID;
		
-- Purpose of Multiple Joins
SELECT *
FROM SalesLT.Customer AS c
	INNER JOIN SalesLT.SalesOrderHeader AS soh
		ON c.CustomerID = soh.CustomerID
	INNER JOIN SalesLT.SalesOrderDetail AS sod
		ON soh.SalesOrderID = sod.SalesOrderID
	INNER JOIN SalesLT.Product AS p
		ON sod.ProductID = p.ProductID;

-- Matching ON clause with JOIN
SELECT *
FROM SalesLT.Customer AS c
	INNER JOIN SalesLT.SalesOrderHeader AS soh
		ON c.CustomerID = soh.CustomerID
	INNER JOIN SalesLT.SalesOrderDetail AS sod
		ON soh.SalesOrderID = sod.SalesOrderID
	INNER JOIN SalesLT.Product AS p
		ON sod.ProductID = p.ProductID
	INNER JOIN SalesLT.CustomerAddress AS ca
		ON c.customerid = ca.customerid;
		
