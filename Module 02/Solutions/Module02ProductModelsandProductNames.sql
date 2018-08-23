USE AdventureWorksLT2008;

SELECT pm.Name
, pmpd.Culture
, pd.Description
, p.ProductNumber
, p.Name
FROM SalesLT.Product AS p
	RIGHT JOIN SalesLT.ProductModel AS pm
		ON p.ProductModelID = pm.ProductModelID
	INNER JOIN SalesLT.ProductModelProductDescription AS pmpd
		ON pm.ProductModelID = pmpd.ProductModelID
	INNER JOIN SalesLT.ProductDescription AS pd
		ON pmpd.ProductDescriptionID = pd.ProductDescriptionID;