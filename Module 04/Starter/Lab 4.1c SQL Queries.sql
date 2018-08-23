USE AdventureWorksLT2008;

-- Task 1 Question 1
SELECT ProductNumber + ' - ' + Name + ' - ' + CONVERT(VARCHAR, ListPrice) AS Product
, CONVERT(VARCHAR, SellStartDate, 107) + ' - ' + ISNULL(CONVERT(VARCHAR, SellEndDate, 107), 'Current') AS StartEnd
FROM SalesLT.Product
WHERE ProductNumber LIKE 'GL-%';

-- Task 1 Question 2
SELECT pm.Name
, CASE pmpd.Culture
		WHEN 'En' THEN 'English'
		WHEN 'Fr' THEN 'French'
	ELSE NULL
	END AS Culture
, pd.Description
FROM SalesLT.ProductModel pm
	INNER JOIN SalesLT.ProductModelProductDescription pmpd
		ON pm.ProductModelID = pmpd.ProductModelID
	INNER JOIN SalesLT.ProductDescription pd
		ON pmpd.ProductDescriptionID = pd.ProductDescriptionID
WHERE pmpd.Culture IN ('En', 'Fr')
AND pm.Name = 'Road-550';

-- Task 1 Question 3
SELECT p.name Product
,CASE
		WHEN ListPrice > $0 AND ListPrice < $100 THEN 'Less than $100'
		WHEN ListPrice >= $100 and ListPrice < $1000 THEN '$100 - $999'
		WHEN ListPrice >= $1000 THEN '$1000 or Greater'
ELSE NULL
END AS PriceGroup
FROM SalesLT.Product p
	INNER JOIN SalesLT.ProductCategory pc
		ON p.ProductCategoryID = pc.ProductCategoryID
WHERE pc.Name IN ('Handlebars', 'Touring Bikes');


