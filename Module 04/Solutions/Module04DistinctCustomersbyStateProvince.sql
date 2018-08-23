USE AdventureWorksLT2008;

SELECT DISTINCT a.StateProvince
, a.City
, c.LastName + ', ' + c.FirstName AS ContactName
, c.CompanyName
FROM SalesLT.Customer c
INNER JOIN SalesLT.CustomerAddress ca
ON c.CustomerID = ca.CustomerID
INNER JOIN SalesLT.Address a
ON ca.AddressID = a.AddressID
WHERE a.CountryRegion = 'United States'
ORDER BY StateProvince, City, ContactName;