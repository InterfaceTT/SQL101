USE AdventureWorksLT2008;

SELECT pc.ProductCategoryID
, pc.Name
, p.ProductNumber
, p.Name
, p.StandardCost
FROM SalesLT.ProductCategory AS pc
	LEFT OUTER JOIN SalesLT.Product AS p
		ON p.ProductCategoryID = pc.ProductCategoryID