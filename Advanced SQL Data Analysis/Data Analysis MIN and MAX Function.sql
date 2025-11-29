-- 01. Category Analysis
-- Find the each sales from the Lowest Value and Highest Value (minimum and maximum) Sales amounts
SELECT OrderID
      ,ProductID
      ,Sales
      ,MIN(Sales) OVER() LowestHighestSales
      ,MAX(Sales) OVER() HighestSales
      ,MIN(Sales) OVER(PARTITION BY ProductID) LowestSalesProd
      ,MAX(Sales) OVER(PARTITION BY ProductID) HighestSalesProd
  FROM Sales.Orders

-- 02. Find the Deviation of each sales from the Lowest and Highest (minimum and maximum) Sales amounts
  SELECT OrderID
      ,ProductID
      ,Sales
      ,Sales - MIN(Sales) OVER() DeviationFromMin
      ,MAX(Sales) OVER() - Sales DeviationFromMax
  FROM Sales.Orders