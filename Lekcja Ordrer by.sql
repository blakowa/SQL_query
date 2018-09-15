
Select ProductCategoryID as Category, Name
From Production.ProductCategory
Order by Category,


Select Name as ProductName, ListPrice
From Production.Product
Order by ListPrice desc
Offset 10 rows
Fetch Next 5 Rows Only;