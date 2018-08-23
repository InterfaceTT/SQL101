USE AdventureWorksLT2008;

SELECT CompanyName
, SalesOrderNumber
, OrderDate
, TotalDue
FROM SalesLT.Customer c
	INNER JOIN SalesLT.SalesOrderHeader soh
		ON c.CustomerID = soh.CustomerID
WHERE TotalDue > $100000;