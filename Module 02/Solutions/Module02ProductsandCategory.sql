USE AdventureWorksLT2008;

SELECT p.ProductID
, p.Name
, p.ProductNumber
, p.ListPrice
, pc.Name
FROM SalesLT.Product AS p
	INNER JOIN SalesLT.ProductCategory AS pc
		ON p.ProductCategoryID = pc.ProductCategoryID