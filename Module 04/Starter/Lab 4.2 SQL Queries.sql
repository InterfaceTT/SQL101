USE AdventureWorksLT2008;

-- Task 1 Question 1
SELECT P.Name ProductName
, soh.SalesOrderNumber
, LineTotal
FROM SalesLT.Product p
	INNER JOIN SalesLT.SalesOrderDetail sod
		ON p.ProductID = sod.ProductID
	INNER JOIN SalesLT.SalesOrderHeader soh
		ON sod.SalesOrderID = soh.SalesOrderID
WHERE p.Name IN ('Chain', 'AWC Logo Cap')
ORDER BY ProductName, LineTotal DESC;

-- Task 1 Question 2
SELECT TOP (10) pm.Name Model
, p.Name Product
, ListPrice
FROM SalesLT.Product p
	INNER JOIN SalesLT.ProductModel pm
		ON p.ProductModelID = pm.ProductModelID
ORDER BY ListPrice DESC;

-- Task 1 Question 3
SELECT DISTINCT Culture AS [Language]
FROM SalesLT.ProductModelProductDescription;


