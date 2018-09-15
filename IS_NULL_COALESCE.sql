/* Try to CAST */

SELECT Name, TRY_CAST (Size AS Integer) AS NumericSize
FROM SalesLT.Product;

/* ISNULL if is null then set 0 */

SELECT Name, ISNULL(TRY_CAST(Size AS int),0) AS ProductDetails
FROM SalesLT.Product;

/* NULL strings = empty strings */

SELECT Name, ISNULL(Color, '') + ' ' + ISNULL(Size, '') AS ProductDetails
FROM SalesLT.Product;

/* ISNULL for strings - multi color */

SELECT Name, NULLIF(Color, 'Multi') AS SingleColor
FROM SalesLT.Product;

/* COALESCE */

SELECT Name, COALESCE(DiscontinuedDate, SellEndDate, SellStartDate) AS LastActivity
FROM SalesLT.Product;

/* Search CASE */

SELECT Name,
		CASE
			WHEN SellEndDate IS NULL THEN 'On Sale'
			ELSE 'Discontinued'
		END AS SaleStatus
FROM SalesLT.Product;

/* Simple CASE */

SELECT Name,
		CASE Size
			WHEN 'S' THEN 'Small'
			WHEN 'M' THEN 'Medium'
			WHEN 'L' THEN 'Large'
			WHEN 'XL' THEN 'Extra-Large'
			ELSE ISNULL(Size,'n/a')
		END AS ProductSize
FROM SalesLT.Product;