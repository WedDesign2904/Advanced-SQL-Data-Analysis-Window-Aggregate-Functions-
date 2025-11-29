# Advanced-SQL-Data-Analysis-Window-Aggregate-Functions-
This document provides practical, pure‑SQL patterns and recipes that rely only on aggregate and window functions. It's aimed at data analysts and engineers who want to solve common analytical problems — running totals, deduplication, Quality Checks, and percentiles — using portable SQL that works across most modern engines(Postgres, MySQL, SQL Server).

# Table of contents
1. Identify Duplicates
2. Overall Analysis
3. Category Analysis
4. Quality Checks
5. Part to Whole
6. Comparison Analysis - Extreme

# Quick prerequisites
* Basic knowledge of SELECT, GROUP BY, and ORDER BY. 
* SQL engine that supports window functions (e.g., OVER (PARTITION BY ... ORDER BY ...)). 
* Familiarity with common aggregates: SUM(), COUNT(), AVG(), MAX(), MIN(). 
