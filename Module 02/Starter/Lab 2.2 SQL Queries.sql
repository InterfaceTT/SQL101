USE AdventureWorksLT2008;

-- Task 1 Question 2
SELECT Product.ProductID
, Product.Name
, Product.ProductNumber
, ProductModel.Name
FROM SalesLT.Product
     INNER JOIN SalesLT.ProductModel
       ON ProductModel.ProductModelID =  
          Product.ProductModelID; 
          
-- Task 1 Question 3
SELECT ProductModel.ProductModelID
, ProductModel.Name
, Product.Name
, Product.ProductNumber
, Product.ListPrice
FROM SalesLT.ProductModel
	LEFT OUTER JOIN SalesLT.Product
		ON ProductModel.ProductModelID = Product.ProductModelID;
          
-- Task 1 Question 4
SELECT PM.ProductModelID
, PM.Name
, P.Name
, P.ProductNumber
FROM SalesLT.ProductModel AS PM
	INNER JOIN SalesLT.Product AS P
		ON PM.ProductModelID = P.ProductModelID;
		
