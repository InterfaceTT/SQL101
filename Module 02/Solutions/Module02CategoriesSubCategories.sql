USE AdventureWorksLT2008;

SELECT pc.Name
, ps.Name
FROM SalesLT.ProductCategory AS pc
	INNER JOIN SalesLT.ProductCategory AS ps
		ON ps.ParentProductCategoryID = pc.ProductCategoryID;