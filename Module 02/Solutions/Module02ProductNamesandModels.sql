USE AdventureWorksLT2008;

SELECT p.ProductNumber
, p.Name
, pm.Name
, pmpd.Culture
, pd.Description
FROM SalesLT.Product AS p
	INNER JOIN SalesLT.ProductModel AS pm
		ON p.ProductModelID = pm.ProductModelID
	INNER JOIN SalesLT.ProductModelProductDescription AS pmpd
		ON pm.ProductModelID = pmpd.ProductModelID
	INNER JOIN SalesLT.ProductDescription AS pd
		ON pmpd.ProductDescriptionID = pd.ProductDescriptionID;