USE AdventureWorksLT2008;

SELECT ProductNumber
, p.name
, ListPrice
, Weight
FROM SalesLT.Product AS p
WHERE Weight IS NOT NULL;