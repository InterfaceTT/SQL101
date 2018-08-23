USE AdventureWorksLT2008;

-- Task 1 Question 1
SELECT c.CustomerID
, CompanyName
, CountryRegion
, PostalCode
FROM SalesLT.Customer c
	INNER JOIN SalesLT.CustomerAddress ca
		ON c.CustomerID = ca.CustomerID
	INNER JOIN SalesLT.Address a
		ON a.AddressID = ca.AddressID
WHERE PostalCode LIKE '89[0-9][0-9][0-9]';

-- Task 1 Question 2
SELECT c.CustomerID
, CompanyName
, CountryRegion
FROM SalesLT.Customer c
	INNER JOIN SalesLT.CustomerAddress ca
		ON c.CustomerID = ca.CustomerID
	INNER JOIN SalesLT.Address a
		ON a.AddressID = ca.AddressID
WHERE CompanyName LIKE 'Di%';

-- Task 2 Question 1
SELECT CompanyName
, FirstName
, LastName
, ModifiedDate
FROM SalesLT.Customer
WHERE ModifiedDate = '20020812';

-- Task 3 Question 1
SELECT ProductNumber
, Name
, Color
FROM SalesLT.product
WHERE SUBSTRING(productnumber, 1,2) = 'FR'
AND Color = 'Yellow';

-- Task 4 Question 1
SELECT CustomerID
, CompanyName
, SalesPerson
, ModifiedDate
FROM SalesLT.Customer
WHERE ModifiedDate BETWEEN '20010801' AND '20010802';

-- Task Question 2
SELECT CompanyName
, SalesPerson
, ModifiedDate
FROM SalesLT.Customer
WHERE SalesPerson = 'adventure-works\michael9'
AND (ModifiedDate >= '20010101'
AND ModifiedDate < '20020101'
OR ModifiedDate >= '20030101'
AND ModifiedDate < '20040101');