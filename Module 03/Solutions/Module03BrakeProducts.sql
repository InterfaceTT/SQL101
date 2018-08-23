USE AdventureWorksLT2008;

SELECT ProductNumber
, p.Name
, Color
, pc.Name
FROM SalesLT.Product AS p
	INNER JOIN SalesLT.ProductCategory as pc
		ON p.ProductCategoryID = pc.ProductCategoryID
WHERE pc.Name = 'Brakes';