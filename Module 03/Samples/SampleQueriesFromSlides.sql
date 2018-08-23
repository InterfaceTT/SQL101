USE AdventureWorksLT2008;

--The WHERE Clause
SELECT customerid
, lastname
, firstname
, phone
FROM SalesLT.Customer
WHERE customerid = 2;

SELECT customerid
, lastname
, firstname
, phone
FROM SalesLT.Customer
WHERE lastname = 'Harris';

-- Implicit Conversion
SELECT *
FROM SalesLT.SalesOrderHeader
WHERE OrderDate = '7/15/2004';

SELECT *
FROM SalesLT.SalesOrderHeader
WHERE SubTotal < 1000;

-- Retrieving a Range of Values
SELECT ProductID
, Name
, Listprice
, SellStartDate
FROM SalesLT.Product
WHERE SellStartDate BETWEEN '1/1/2002'AND '12/31/2002';

-- Using a List of Values
SELECT productid, name, color, listprice
FROM SalesLT.Product
WHERE Color IN ('Black', 'Red', 'Multi');

-- Filtering on Unknown Values
SELECT customerid
, firstname
, middlename
, lastname
, companyname
FROM SalesLT.Customer
WHERE middlename IS NULL;

SELECT customerid
, firstname
, middlename
, lastname
, companyname
FROM SalesLT.Customer
WHERE middlename IS NOT NULL;

-- LIKE operator with Wildcard
SELECT customerid
, lastname
, firstname
, phone
FROM SalesLT.Customer
WHERE lastname LIKE 'B%';

-- Using Multiple Conditions
SELECT Name
, Color
, ListPrice
, SellStartDate
FROM SalesLT.Product
WHERE Color = 'black'
AND ListPrice > $500
AND (SellStartDate >= '1/1/2001'
AND SellStartDate = '1/1/2002'
OR SellStartDate >= '1/1/2003'
AND SellStartDate < '1/1/2004');

-- DATETIME, DATE and TIME formats
SELECT *
FROM SalesLT.Customer
WHERE modifieddate BETWEEN '1/1/2002' AND '12/31/2002 23:59:59.997';

-- What are functions?
SELECT CompanyName
FROM SalesLT.Customer
WHERE LEFT(CompanyName, 3) = 'Ce';

