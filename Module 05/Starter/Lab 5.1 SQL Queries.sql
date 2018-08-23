USE AdventureWorksLT2008;

-- Task 1 Question 1
SELECT pm.name ProductModel
, AVG(p.ListPrice) AvgListPrice
, MIN(p.ListPrice) MinListPrice
, MAX(p.ListPrice) MaxListPrice
FROM SalesLT.ProductModel pm
	INNER JOIN SalesLT.Product p
		ON pm.ProductModelID = p.ProductModelID
GROUP BY pm.Name
ORDER BY AvgListPrice DESC;

-- Task 1 Question 2
SELECT pm.name ProductModel
, AVG(p.ListPrice) AvgListPrice
, MIN(p.ListPrice) MinListPrice
, MAX(p.ListPrice) MaxListPrice
FROM SalesLT.ProductModel pm
	INNER JOIN SalesLT.Product p
		ON pm.ProductModelID = p.ProductModelID
GROUP BY pm.Name
HAVING AVG(p.ListPrice) > $1000
ORDER BY AvgListPrice DESC;




