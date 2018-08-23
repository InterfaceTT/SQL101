USE AdventureWorksLT2008;

SELECT p.Name AS ProductName
,CONVERT(VARCHAR, OrderDate, 1) OrderDate
, '$' + CONVERT(VARCHAR, ROUND(TotalDue, 0), 1) AS TotalDue
, CONVERT(VARCHAR, CONVERT(NUMERIC(38,2), ROUND((LineTotal / Totaldue) * 100, 2)), 0) + '%'
AS PercentofTotalDue
FROM SalesLT.ProductModel pm
	INNER JOIN SalesLT.Product p
		ON pm.ProductModelID = p.ProductModelID
	INNER JOIN SalesLT.SalesOrderDetail sod
		ON p.ProductID = sod.ProductID
	INNER JOIN SalesLT.SalesOrderHeader soh
		ON sod.SalesOrderID = soh.SalesOrderID
WHERE pm.name = 'Mountain-200'
AND OrderQty > 4;