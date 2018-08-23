/* This script will modify the data in the SalesLT.SalesOrderHeader table to make it more 
realistic for the SQL100 class
*/

USE AdventureWorksLT2008;

-- Update SalesOrderHeader Orderdate, ShipDate, DueDate columns

UPDATE  SalesLT.SalesOrderHeader
SET OrderDate = '20040715'
, DueDate = DATEADD(day, 10, '20040715')
, ShipDate = DATEADD(day, 8, '20040715')
WHERE SalesOrderID BETWEEN 71774 AND 71782;

UPDATE  SalesLT.SalesOrderHeader
SET OrderDate = '20040810'
, DueDate = DATEADD(day, 8, '20040810')
, ShipDate = DATEADD(day, 7, '20040810')
WHERE SalesOrderID BETWEEN 71783 AND 71797;

UPDATE  SalesLT.SalesOrderHeader
SET OrderDate = '20040905'
, DueDate = DATEADD(day, 11, '20040905')
, ShipDate = DATEADD(day, 5, '20040905')
WHERE SalesOrderID BETWEEN 71845 AND 71867;

UPDATE  SalesLT.SalesOrderHeader
SET OrderDate = '20041020'
, DueDate = DATEADD(day, 5, '20041020')
, ShipDate = DATEADD(day, 2, '20041020')
WHERE SalesOrderID BETWEEN 71885 AND 71935;

UPDATE  SalesLT.SalesOrderHeader
SET OrderDate = '20041128'
, DueDate = DATEADD(day, 15, '20041128')
, ShipDate = DATEADD(day, 10, '20041128')
WHERE SalesOrderID BETWEEN 71936 AND 71946;

UPDATE  SalesLT.SalesOrderHeader
SET DueDate = DATEADD(day, 8, OrderDate)
, ShipDate = DATEADD(day, 9, OrderDate)
WHERE SalesOrderID = 71815;

UPDATE  SalesLT.SalesOrderHeader
SET DueDate = DATEADD(day, 6, OrderDate)
, ShipDate = DATEADD(day, 10, OrderDate)
WHERE SalesOrderID = 71885;


-- Add Credit Card Approval Codes to the CreditCodeApprovalCode column

UPDATE SalesLT.SalesOrderHeader
SET CreditCardApprovalCode = 'A' + CONVERT(varchar(4), CONVERT(int,RAND(SalesOrderID) * SalesOrderID))
FROM SalesLT.SalesOrderHeader
WHERE TotalDue <= $100;

UPDATE SalesLT.SalesOrderHeader
SET CreditCardApprovalCode = 'M' + CONVERT(varchar(4), CONVERT(int,RAND(SalesOrderID) * SalesOrderID))
FROM SalesLT.SalesOrderHeader
WHERE TotalDue BETWEEN $101 AND $300;

UPDATE SalesLT.SalesOrderHeader
SET CreditCardApprovalCode = 'V' + CONVERT(varchar(4), CONVERT(int,RAND(SalesOrderID) * SalesOrderID))
FROM SalesLT.SalesOrderHeader
WHERE TotalDue BETWEEN $301 AND $1000;

-- Add time value to the ModifiedDate values in the SalesLT.Customer

UPDATE SalesLT.Customer
 SET modifieddate = 
 DATEADD( MILLISECOND, RAND(CONVERT(binary(9), Passwordhash) / 199) 
 * 1000000000, modifieddate);
GO

-- Create an index on SellStartDate in the Product table
CREATE INDEX IX_Product_SellStartDate ON SalesLT.Product(SellStartDate); 
GO


