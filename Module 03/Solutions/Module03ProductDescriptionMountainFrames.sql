USE AdventureWorksLT2008;

SELECT p.ProductID
, p.Name
, p.ProductNumber
, pd.Description
FROM SalesLT.Product p
	INNER JOIN SalesLT.ProductModelProductDescription pmpd
		ON p.ProductModelID = pmpd.ProductModelID
	INNER JOIN SalesLT.ProductDescription pd
		ON pmpd.ProductDescriptionID = pd.ProductDescriptionID
WHERE ProductNumber LIKE 'FR-[MT][0-9][0-9]B%'
AND Culture = 'en';