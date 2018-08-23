USE AdventureWorksLT2008;

SELECT a.CountryRegion AS Country
, c.CompanyName
, SUM(soh.totaldue) AS TotalSales
FROM SalesLT.Address a
	INNER JOIN SalesLT.CustomerAddress ca
		ON a.AddressID = ca.AddressID
	INNER JOIN SalesLT.Customer c
		ON ca.CustomerID = c.CustomerID
	INNER JOIN SalesLT.SalesOrderHeader soh
		ON c.CustomerID = soh.CustomerID
WHERE a.CountryRegion = 'United States'
AND ca.AddressType = 'Main Office'
GROUP BY a.CountryRegion, c.CompanyName
HAVING SUM(soh.TotalDue) > $10000
ORDER BY TotalSales DESC;