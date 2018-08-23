USE AdventureWorksLT2008;

SELECT pc.Name AS SubCategory
, '$' + CONVERT(VARCHAR, CONVERT(MONEY,SUM(sod.LineTotal)), 1) AS TotalSales
, COUNT(sod.ProductID) AS SalesCount
FROM SalesLT.ProductCategory pc
	INNER JOIN SalesLT.Product p
		ON p.ProductCategoryID = pc.ProductCategoryID
	INNER JOIN SalesLT.SalesOrderDetail sod
		ON p.ProductID = sod.ProductID
GROUP BY pc.Name
HAVING COUNT(sod.ProductID) > 10
ORDER BY SubCategory;