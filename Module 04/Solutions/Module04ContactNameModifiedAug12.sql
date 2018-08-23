USE AdventureWorksLT2008;

SELECT CompanyName
, FirstName + ISNULL(' ' + MiddleName, '') + ' ' + LastName AS ContactName
FROM SalesLT.Customer c
WHERE c.ModifiedDate > '20020812'
AND c.ModifiedDate <= '20020813';