USE AdventureWorksLT2008;

SELECT c.CompanyName
, a.AddressLine1 + ISNULL(' ' + a.AddressLine2, '')
AS Address
, a.City
, a.StateProvince
, soh.SalesOrderID
, CONVERT(VARCHAR, soh.ShipDate, 101) AS ShipDate
, CASE
WHEN soh.TotalDue > $0 AND soh.TotalDue < $1000 THEN 'Small Order'
WHEN soh.TotalDue >= $1000 AND soh.TotalDue <$10000 THEN 'Medium Order'
WHEN soh.TotalDue >= $10000 THEN 'Large Order'
END AS OrderCategory
FROM SalesLT.Customer c
	INNER JOIN SalesLT.CustomerAddress ca
		ON c.CustomerID = ca.CustomerID
	INNER JOIN SalesLT.Address a
		ON ca.AddressID = a.AddressID
	INNER JOIN SalesLT.SalesOrderHeader soh
		ON c.CustomerID = soh.CustomerID
WHERE a.StateProvince = 'California';