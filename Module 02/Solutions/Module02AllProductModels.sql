USE AdventureWorksLT2008;

SELECT pm.ProductModelID
, pm.Name
, pmpd.Culture
, pd.Description
FROM SalesLT.ProductModel AS pm
	LEFT OUTER JOIN SalesLT.ProductModelProductDescription AS pmpd
		ON pm.ProductModelID = pmpd.ProductModelID
	LEFT OUTER JOIN SalesLT.ProductDescription AS pd
		ON pmpd.ProductDescriptionID = pd.ProductDescriptionID;