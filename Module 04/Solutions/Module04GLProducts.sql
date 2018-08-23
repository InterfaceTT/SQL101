USE AdventureWorksLT2008;

SELECT ProductNumber + ' - ' + Name + ' - ' +
CONVERT(VARCHAR, ListPrice) AS Product
, CONVERT(VARCHAR, SellStartDate, 107) + ' - ' +
		CONVERT(VARCHAR, SellEndDate, 107) AS StartEnd
FROM SalesLT.Product
WHERE ProductNumber LIKE 'GL-%'
AND SellEndDate IS NOT NULL;