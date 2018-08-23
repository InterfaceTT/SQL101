USE AdventureWorksLT2008;

SELECT pc.Name AS Category
, '$' + CONVERT(VARCHAR, CONVERT(MONEY,SUM(sod.LineTotal)), 1) AS TotalSales
, COUNT(sod.ProductID) AS SalesCount
FROM SalesLT.ProductCategory pc
	INNER JOIN SalesLT.ProductCategory psc
		ON psc.ParentProductCategoryID = pc.ProductCategoryID
	INNER JOIN SalesLT.Product p
		ON p.ProductCategoryID = psc.ProductCategoryID
	INNER JOIN SalesLT.SalesOrderDetail sod
		ON p.ProductID = sod.ProductID
GROUP BY pc.Name
ORDER BY SUM(sod.LineTotal) DESC;