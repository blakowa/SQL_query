
Select Name, Color From SalesLT.Product Where ProductModelID <> 6;

Select ProductNumber, Name, ListPrice From SalesLT.Product Where ProductNumber Like '%R%';

Select ProductNumber, ListPrice From SalesLT.Product Where ProductNumber Like 'FR-_[0-9][0-9]_-[0-9][0-9]';

Select Name From SalesLT.Product WHERE SellEndDate IS NOT NULL;

SELECT Name FROM SalesLT.Product WHERE SellEndDate BETWEEN '2006/1/1' AND '2006/12/31';

SELECT ProductCategoryID, Name, ListPrice FROM SalesLT.Product WHERE ProductCategoryID IN (5,6,7);

SELECT ProductCategoryID, Name, ListPrice, SellEndDate FROM SalesLT.Product WHERE ProductCategoryID IN (5,6,7) AND SellEndDate IS NULL;

SELECT Name, ProductCategoryID, ProductNumber FROM SalesLT.Product WHERE ProductNumber LIKE 'FR%' OR ProductCategoryID IN (5,6,7);