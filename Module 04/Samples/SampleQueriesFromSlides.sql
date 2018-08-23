USE AdventureWorksLT2008;

-- Renaming Columns with Alias
SELECT customerid AS 'Customer ID:'
, lastname AS Last
, firstname AS First
, phone AS [Phone Number]
FROM SalesLT.Customer;

-- Using Expressions in a Column
SELECT productid AS [Product ID]
, Name AS [Product Name]
, ListPrice - StandardCost AS [Standard Profit]
FROM SalesLT.Product;

-- Concatenating Data
SELECT CustomerID
, lastname + ',' + firstname AS [Full Name]
, phone
FROM SalesLT.Customer;

-- Operators and Execution Precedence
SELECT salesorderid
, (orderqty * (unitprice - unitpricediscount) ) AmountDisc
, orderqty * unitprice Amount
FROM SalesLT.SalesOrderDetail
WHERE unitpricediscount <> $0.0;

-- Explicit Conversion
SELECT 'The List Price is: ' + ListPrice
FROM SalesLT.Product;

SELECT 'The List Price is: ' + CONVERT(CHAR(4),ListPrice)
FROM SalesLT.Product;

-- Using CONVERT Styles (Money)
SELECT UnitPrice
, CONVERT(varchar, unitprice, 0) [Style 0]
, CONVERT(varchar, unitprice, 1) [Style 1]
, CONVERT(varchar, unitprice, 2) [Style 2]
FROM SalesLT.SalesOrderDetail;

-- Using CONVERT Styles (DateTime)
SELECT ModifiedDate
, CONVERT(VARCHAR, ModifiedDate, 0) [Style 0]
, CONVERT(VARCHAR, ModifiedDate, 100) [Style 100]
, CONVERT(VARCHAR, ModifiedDate, 1) [Style 1]
, CONVERT(VARCHAR, ModifiedDate, 101) [Style 101]
, CONVERT(VARCHAR, ModifiedDate, 10) [Style 10]
, CONVERT(VARCHAR, ModifiedDate, 110) [Style 110]
FROM SalesLT.Customer;

-- Using the ROUND Functions
SELECT LineTotal
, ROUND(LineTotal, 2) [Plus2]
, ROUND(LineTotal, 2, 1) [Plus2Truncate]
, ROUND(LineTotal, -2) [Minus2]
, ROUND(LineTotal, -2, 1)[Minus2Truncate]
FROM SalesLT.SalesOrderDetail;

SELECT LineTotal / OrderQty
, '$' + CONVERT(varchar, CONVERT(MONEY, ROUND(LineTotal / OrderQty, 2)), 1)
FROM SalesLT.SalesOrderDetail;

-- Using NULL functions
SELECT c.Customerid
, ISNULL(c.title + ' ' , '') + c.firstname + ' ' + c.lastname
+ ISNULL(' ' + c.suffix, '') CustomerName
, a.AddressLine1 + COALESCE(' ' + a.AddressLine2, '') CustomerAddress
, NULLIF(AddressType, 'Shipping') AddressType
FROM SalesLT.Customer c
	INNER JOIN SalesLT.CustomerAddress ca
		ON c.CustomerID = ca.CustomerID
	INNER JOIN SalesLT.Address a
		ON ca.AddressID = a.AddressID;
		
-- Simple CASE Expressions
SELECT pmpd.ProductDescriptionID
, CASE pmpd.Culture
WHEN 'en' THEN 'English'
WHEN 'fr' THEN 'French'
ELSE 'Other'
END Language
, pd.Description
FROM SalesLT.ProductModelProductDescription pmpd
INNER JOIN SalesLT.ProductDescription pd
ON pmpd.ProductDescriptionID = pd.ProductDescriptionID
WHERE pmpd.Culture IN ('en', 'fr');

-- Search CASE Expression
SELECT productid
, name ProductName
, CASE
WHEN ListPrice = 0 THEN 'Mfg item - not for resale'
WHEN ListPrice < 50 THEN 'Under $50'
WHEN ListPrice >= 50 and ListPrice < 250 THEN 'Under $250'
WHEN ListPrice >= 250 and ListPrice < 1000 THEN 'Under $1000'
ELSE 'Over $1000' END AS [Price Range]
FROM SalesLT.Product;

-- Sorting Rows
SELECT p.ProductID
, p.Name ProductName
, pc.Name SubCategoryName
, p.ListPrice
FROM SalesLT.Product p
INNER JOIN SalesLT.ProductCategory pc
ON p.ProductCategoryID = pc.ProductCategoryID
WHERE p.ProductCategoryID IN (8,24)
ORDER BY SubCategoryName, p.ListPrice DESC;

--  TOP Operator
SELECT TOP 2 salesorderid
, productid
, orderqty
FROM SalesLT.SalesOrderDetail
ORDER BY orderqty DESC;

SELECT TOP 2 WITH TIES salesorderid
, productid
, orderqty
FROM SalesLT.SalesOrderDetail
ORDER BY orderqty DESC;

-- Eliminating Duplicates
SELECT DISTINCT AddressType
FROM SalesLT.CustomerAddress;

