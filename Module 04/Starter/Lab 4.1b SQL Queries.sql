USE AdventureWorksLT2008;

-- Task 1 Question 1
SELECT FirstName + ' ' + LastName AS CustomerName
, CONVERT(VARCHAR, OrderDate, 110) AS OrderDate
, CONVERT(VARCHAR, ShipDate, 110) AS ShipDate
, p.Name ProductName
FROM SalesLT.Customer c
	INNER JOIN SalesLT.SalesOrderHeader soh
		ON c.CustomerID = soh.CustomerID
	INNER JOIN SalesLT.SalesOrderDetail sod
		ON soh.SalesOrderID = sod.SalesOrderID
	INNER JOIN SalesLT.Product p
		ON sod.ProductID = p.ProductID
WHERE c.LastName = 'Marple'
AND c.FirstName = 'Melissa';

-- Task 1 Question 2
SELECT p.Name AS ProductName
,'$' + CONVERT(VARCHAR, p.ListPrice, 1) AS ListPrice
,CONVERT(numeric(38,3), ROUND(OrderQty / 3.0, 3)) AS ReducedQty
,'$' + CONVERT(VARCHAR, p.ListPrice * CONVERT(MONEY, ROUND(OrderQty / 3.0, 0)), 1) AS ReducedLineTotal
,'$' + CONVERT(VARCHAR, CONVERT(MONEY, sod.LineTotal), 1)
AS OriginalLineTotal
FROM SalesLT.ProductModel pm
	INNER JOIN SalesLT.Product p
		ON pm.ProductModelID = p.ProductModelID
	INNER JOIN SalesLT.SalesOrderDetail sod
		ON p.ProductID = sod.ProductID
WHERE pm.name = 'Mountain-200'
AND OrderQty > 4;

