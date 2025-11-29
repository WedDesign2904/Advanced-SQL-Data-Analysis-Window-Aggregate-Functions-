-- 1. Overall Analysis
-- How Many Total Orders 

SELECT * ,
	COUNT(*) OVER() AS TotalSales
FROM Sales.OrdersArchive

-- 2. Category Analysis
--How Many Total Order Category

SELECT 
	OrderID,
	OrderStatus,
	COUNT(*) OVER(PARTITION BY OrderID) AS TotalOrderStatus
FROM Sales.OrdersArchive

-- 3. Quality Checks : Identify NULLS
-- How Many Calculation identify Null in Data Quality Issues

SELECT * 
	,COUNT(*) OVER() TotalBillAdd
	,COUNT(BillAddress) OVER() TotalBillAddress
FROM Sales.OrdersArchive

-- 4. Quality Checks : Identify Duplicates
-- Checking Primary Key repeat again Found

SELECT 
* 
FROM (
	SELECT *, 
		COUNT(*) OVER(PARTITION BY OrderID) CheckPK
	  FROM Sales.OrdersArchive
)o 
WHERE CheckPK > 1