-- select the ProductNumber, Name, and ListPrice columns
SELECT ProductNumber, Name, ListPrice
FROM SalesLT.Product
-- filter for ProductNumbers
WHERE ProductNumber LIKE 'BK-[^R]%-[0-9][0-9]';

-- finish the query
SELECT *
FROM SalesLT.Customer;

-- finish the query
SELECT SalesPerson, Title + ' ' + LastName AS CustomerName, Phone
FROM SalesLT.Customer;

-- cast the CustomerID column to a VARCHAR and concatenate with the CompanyName column
SELECT  CAST(CustomerID AS varchar) + ': ' + CompanyName AS CustomerCompany
FROM SalesLT.Customer;

-- finish the query
SELECT */*PurchaseOrderNumber + ' (' + STR(RevisionNumber, 1) + ')' AS OrderRevision,
	   CONVERT(NVARCHAR(30), OrderDate, 102) AS OrderDate*/
FROM SalesLT.SalesOrderHeader;

-- use ISNULL to check for middle names and concatenate with FirstName and LastName
SELECT FirstName + ' ' + ISNULL(MiddleName + ' ', '') + LastName
AS CustomerName
FROM SalesLT.Customer;

-- select the CustomerID, and use COALESCE with EmailAddress and Phone columns
SELECT CustomerID, COALESCE(EmailAddress, Phone) AS PrimaryContact
FROM SalesLT.Customer;

SELECT SalesOrderID, OrderDate,
  CASE
    WHEN  ShipDate IS NULL THEN 'Awaiting Shipment'
    ELSE 'Shipped'
  END AS ShippingStatus
FROM SalesLT.SalesOrderHeader;