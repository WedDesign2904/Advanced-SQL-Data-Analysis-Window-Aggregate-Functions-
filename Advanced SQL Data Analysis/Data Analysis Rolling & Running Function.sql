-- 1. Comparision Analysis - Extreme
-- Calculate Moving average of sales for each product over time, including only the next order
SELECT 
OrderID,
OrderDate,
ProductID,
Sales,
AVG(Sales) OVER(PARTITION BY ProductID) AvgByProduct,
AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate) MovingAvg
FROM SalesDB.Sales.Orders

-- 2. Running Total
SELECT 
OrderID,
OrderDate,
ProductID,
Sales,
AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate) RunningAvgTot
FROM SalesDB.Sales.Orders

-- 3. Rolling Total
SELECT 
OrderID,
OrderDate,
ProductID,
Sales,
AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) RollingAvg
FROM SalesDB.Sales.Orders