USE AdventureWorksLT2008;

SELECT CompanyName
, SalesPerson
, CreditCardApprovalCode
FROM SalesLT.Customer c
	INNER JOIN SalesLT.SalesOrderHeader soh
		ON c.CustomerID = soh.CustomerID
WHERE soh.CreditCardApprovalCode LIKE 'V%';