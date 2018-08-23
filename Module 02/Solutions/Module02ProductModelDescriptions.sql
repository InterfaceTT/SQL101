USE AdventureWorksLT2008;

SELECT pm.ProductModelID
, pm.Name
, pmpd.Culture
, pd.Description
FROM SalesLT.ProductModel AS pm
	INNER JOIN SalesLT.ProductModelProductDescription AS pmpd
		ON pm.ProductModelID = pmpd.ProductModelID
	INNER JOIN SalesLT.ProductDescription AS pd
		ON pd.ProductDescriptionID = pmpd.ProductDescriptionID;