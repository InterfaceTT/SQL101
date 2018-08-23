USE AdventureWorksLT2008;

SELECT ProductNumber
, Name
, DATEDIFF(MONTH, SellStartDate, SellEndDate)
AS [Selling Months]
FROM SalesLT.product
WHERE SellEndDate IS NOT NULL;