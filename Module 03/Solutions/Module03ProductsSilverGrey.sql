USE AdventureWorksLT2008;

SELECT ProductNumber
, p.Name
, Color
, pm.Name
FROM SalesLT.Product AS p
	INNER JOIN SalesLT.ProductModel as pm
		ON p.ProductModelID = pm.ProductModelID
WHERE Color IN ('White', 'Grey', 'Silver/Black');