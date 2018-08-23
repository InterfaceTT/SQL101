USE AdventureWorksLT2008;

-- Task 1 Question 3
SELECT c.CustomerID
, CompanyName
, AddressType
, AddressLine1
, City
, StateProvince
FROM SalesLT.Customer c
	INNER JOIN SalesLT.CustomerAddress ca
		ON c.CustomerID = ca.CustomerID
	INNER JOIN SalesLT.Address a
		ON ca.AddressID = a.AddressID;
		
-- Task 1 Question 4
SELECT c.CustomerID
, CompanyName
, AddressType
, AddressLine1
, City
, StateProvince
FROM SalesLT.Customer AS c
	LEFT OUTER JOIN SalesLT.CustomerAddress AS ca
		ON c.CustomerID = ca.CustomerID
	LEFT OUTER JOIN SalesLT.Address AS a
		ON ca.AddressID = a.AddressID;
		
-- Task 3 Question 2
SELECT c.CustomerID
, CompanyName
, AddressType
, AddressLine1
, City
, StateProvince
, SalesOrderID
FROM SalesLT.Customer c
	INNER JOIN SalesLT.CustomerAddress ca
		ON c.CustomerID = ca.CustomerID
	INNER JOIN SalesLT.Address a
		ON ca.AddressID = a.AddressID
	INNER JOIN SalesLT.SalesOrderHeader soh
		ON c.CustomerID = soh.CustomerID;
		
-- Task 2 Question 3
SELECT c.CustomerID
, CompanyName
, AddressType
, AddressLine1
, City
, StateProvince
, SalesOrderID
FROM SalesLT.Customer c
	INNER JOIN SalesLT.CustomerAddress ca
		ON c.CustomerID = ca.CustomerID
	INNER JOIN SalesLT.Address a
		ON ca.AddressID = a.AddressID
	LEFT OUTER JOIN SalesLT.SalesOrderHeader soh
		ON c.CustomerID = soh.CustomerID;