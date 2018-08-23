USE AdventureWorksLT2008;

SELECT TOP 10 CompanyName
, soh.SalesOrderNumber
, FirstName + ' ' + LastName ContactName
, CONVERT(VARCHAR, soh.OrderDate, 101) OrderDate
, '$' + CONVERT(VARCHAR, soh.TotalDue, 1) TotalDue
FROM SalesLT.Customer c
	INNER JOIN SalesLT.SalesOrderHeader soh
		ON c.CustomerID = soh.CustomerID
ORDER BY soh.TotalDue DESC;