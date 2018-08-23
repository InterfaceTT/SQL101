USE AdventureWorksLT2008;

SELECT p.Name
, p.ListPrice
, sod.UnitPrice
, p.ListPrice - sod.UnitPrice Difference
FROM SalesLT.Product p
	INNER JOIN SalesLT.SalesOrderDetail sod
		ON p.ProductID = sod.ProductID
WHERE p.Name = 'Classic Vest, S';