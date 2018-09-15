-- select the CompanyName, AddressLine1 columns
-- alias as per the instructions
SELECT ___, ___, ___, ___ AS AddressType
FROM SalesLT.Customer AS c
JOIN SalesLT.CustomerAddress AS ca
-- join based on CustomerID
ON ___ = ___
-- join another table
___ SalesLT.Address AS a
-- join based on AddressID
ON ___ = ___
-- filter for where the correct AddressType
WHERE ___ = 'Main Office';