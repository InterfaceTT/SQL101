USE AdventureWorksLT2008;

SELECT CompanyName
, SalesPerson
, SalesOrderID
, OrderDate
, TotalDue
FROM SalesLT.Customer c
	INNER JOIN SalesLT.SalesOrderHeader soh
		ON c.CustomerID = soh.CustomerID
WHERE TotalDue BETWEEN $100 and $1000;