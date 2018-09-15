--Disppaly a list of product colors--
Select ISNULL(Color,'NONE') AS Color FROM SalesLT.Product;

Select Distinct ISNULL(Color,'NONE') AS Color FROM SalesLT.Product;

Select Distinct ISNULL(Color,'NONE') AS Color FROM SalesLT.Product ORDER by Color;

Select Distinct ISNULL(Color,'NONE') AS Color, ISNULL(Size,'---') AS Size FROM SalesLT.Product ORDER by Color;

SELECT TOP 100 Name, ListPrice FROM SalesLT.Product ORDER BY ListPrice DESC;

SELECT Name, ListPrice FROM SalesLT.Product ORDER BY ProductNumber OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

SELECT Name, ListPrice FROM SalesLT.Product ORDER BY ProductNumber OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;