USE AdventureWorksLT2008;


-- Using the GROUP BY Clause
SELECT productid
, salesorderid
, orderqty
FROM SalesLT.SalesOrderDetail;

SELECT productid
, SUM(orderqty) totalqty
FROM SalesLT.SalesOrderDetail
GROUP BY productid;

SELECT productid
, SUM(orderqty) totalqty
FROM SalesLT.SalesOrderDetail
WHERE productid = 716
GROUP BY productid;

-- Filtering on Group values
SELECT productid
, salesorderid
, orderqty
FROM SalesLT.SalesOrderDetail;

SELECT productid
, SUM(orderqty) totalqty
FROM SalesLT.SalesOrderDetail
GROUP BY productid
HAVING SUM(orderqty) > 3;

