USE AdventureWorksLT2008;

SELECT p.name AS Product
,CASE Size
		WHEN 'S' THEN 'Small'
		WHEN 'M' THEN 'Medium'
		WHEN 'L' THEN 'Large'
		WHEN 'XL' THEN 'X-Large'
	ELSE 'Numeric Size'
END AS SizeCategory
FROM SalesLT.Product p
	INNER JOIN SalesLT.ProductCategory pc
		ON p.ProductCategoryID = pc.ProductCategoryID
WHERE pc.Name IN ('Gloves', 'Hydration Packs');