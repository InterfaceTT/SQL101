SELECT c.CompanyName
, c.FirstName + ' ' + c.LastName AS CustomerName
, SUBSTRING(c.SalesPerson, CHARINDEX('\', c.SalesPerson, 1) + 1, 10) SalesPersonLogin
, soh.SalesOrderID
, DATENAME(dw, soh.ShipDate) AS DayofWeekShipped
, soh.TotalDue
FROM SalesLT.Customer c
	INNER JOIN SalesLT.SalesOrderHeader soh
		ON c.CustomerID = soh.CustomerID
WHERE soh.TotalDue > $10000