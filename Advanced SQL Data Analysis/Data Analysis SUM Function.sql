-- 1. Category Analysis
-- Find the Percentage Contribution of each product sales to the total Sales
-- CAST to Type changing(Float) Value
SELECT OrderID
      ,OrderDate
      ,ProductID
      ,Sales
      ,SUM(Sales) OVER() TotalSales
      ,SUM(Sales) OVER(PARTITION BY ProductID) TotalProduct
  FROM Sales.Orders

-- 2. Part to Whole Analysis
SELECT OrderID
      ,OrderDate
      ,ProductID
      ,Sales
      ,SUM(Sales) OVER() TotalSales
      ,ROUND(CAST(Sales AS FLOAT) / SUM(Sales) OVER() * 100, 2) PercentageOfTotal
  FROM Sales.Orders