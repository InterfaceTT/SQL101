USE AdventureWorksLT2008;

SELECT CompanyName
, SalesPerson
, soh.SalesOrderNumber
, CreditCardApprovalCode
, OrderDate
FROM SalesLT.Customer c
	INNER JOIN SalesLT.SalesOrderHeader soh
		ON c.CustomerID = soh.CustomerID
WHERE soh.CreditCardApprovalCode IS NOT NULL
AND (soh.OrderDate >= '20040701'
AND soh.OrderDate < '20040801'
OR soh.OrderDate > = '20041001'
AND soh.OrderDate < '20041101');