-- 1. Category Analysis
-- Find the Percentage Contribution of each product sales to the total AVG Sales
SELECT OrderID
      ,OrderDate
      ,ProductID
      ,Sales
      ,AVG(Sales) OVER() TotalSales
      ,AVG(Sales) OVER(PARTITION BY ProductID) AvgOfSales
  FROM Sales.Orders

-- 2. Part to Whole Analysis
-- Find all orders where sales are higher than the average sales across all orders
SELECT OrderID
      ,OrderDate
      ,ProductID
      ,Sales
      ,AVG(Sales) OVER() TotalSales
      ,ROUND(CAST(Sales AS FLOAT) / AVG(Sales) OVER() *100, 2) AS TotalAvg
  FROM Sales.Orders

-- Find all orders where Sales are higher than the average sales across all orders
  SELECT 
    *
  FROM (
      SELECT OrderID
          ,OrderDate
          ,ProductID
          ,Sales
          ,AVG(Sales) OVER() TotalSales
      FROM Sales.Orders
  )t 
  WHERE Sales > TotalSales