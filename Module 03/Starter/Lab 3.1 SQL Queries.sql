USE AdventureWorksLT2008;

-- Task 1 Question 1
SELECT FirstName
, LastName
, CompanyName
FROM SalesLT.Customer
WHERE LastName = 'Brooks';

-- Task 1 Question 2
SELECT FirstName
, LastName
, CompanyName
, StateProvince
FROM SalesLT.Customer c
	INNER JOIN SalesLT.CustomerAddress ca
		ON c.CustomerID = ca.CustomerID
	INNER JOIN SalesLT.Address a
		ON ca.AddressID = a.AddressID
WHERE StateProvince IN ('Nevada', 'New Mexico');

-- Task 1 Question 3
SELECT ProductNumber
, Name
, Color
, ListPrice
FROM SalesLT.Product
WHERE ListPrice BETWEEN 25.00 and 35.00;

-- Task 1 Question 4
SELECT ProductModelID
,Name
,CatalogDescription
FROM SalesLT.ProductModel
WHERE CatalogDescription IS NOT NULL;