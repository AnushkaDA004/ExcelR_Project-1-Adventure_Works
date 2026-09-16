-- Question 3
SELECT
    YEAR(OrderDate_New) AS Year,
    MONTH(OrderDate_New) AS MonthNo,
    MONTHNAME(OrderDate_New) AS MonthName,
    ROUND(SUM(SalesAmount),2) AS TotalSales
FROM Sales
WHERE YEAR(OrderDate_New) = 2013
GROUP BY
    YEAR(OrderDate_New),
    MONTH(OrderDate_New),
    MONTHNAME(OrderDate_New)
ORDER BY MonthNo;
-- Question 4 sales amount
SELECT
    UnitPrice,
    OrderQuantity,
    SalesAmount
FROM Sales
LIMIT 10;
-- Question 5 ProductionCost
SELECT
    ProductStandardCost,
    OrderQuantity,
    ProductionCost
FROM Sales
LIMIT 10;

-- Question 6 ProductionCost
DESCRIBE Sales;

ALTER TABLE Sales
ADD COLUMN Profit DECIMAL(15,2);

UPDATE Sales
SET Profit = SalesAmount - ProductionCost;

SELECT
    SalesAmount,
    ProductionCost,
    Profit
FROM Sales
LIMIT 10;

-- Question 7 ProductionCost
SELECT
    YEAR(OrderDate_New) AS Year,
    MONTH(OrderDate_New) AS MonthNo,
    MONTHNAME(OrderDate_New) AS MonthName,
    ROUND(SUM(SalesAmount),2) AS TotalSales
FROM Sales
WHERE YEAR(OrderDate_New) = 2013
GROUP BY
    YEAR(OrderDate_New),
    MONTH(OrderDate_New),
    MONTHNAME(OrderDate_New)
ORDER BY MonthNo;

-- Question 8 ProductionCost
SELECT
    YEAR(OrderDate_New) AS Year,
    ROUND(SUM(SalesAmount),2) AS TotalSales
FROM Sales
GROUP BY YEAR(OrderDate_New)
ORDER BY Year;

-- Question 9 ProductionCost
SELECT
    MONTH(OrderDate_New) AS MonthNo,
    MONTHNAME(OrderDate_New) AS MonthName,
    ROUND(SUM(SalesAmount),2) AS TotalSales
FROM Sales
GROUP BY
    MONTH(OrderDate_New),
    MONTHNAME(OrderDate_New)
ORDER BY MonthNo;

-- Question 10 ProductionCost
SELECT
    CONCAT('Q',QUARTER(OrderDate_New)) AS Quarter,
    ROUND(SUM(SalesAmount),2) AS TotalSales
FROM Sales
GROUP BY QUARTER(OrderDate_New)
ORDER BY Quarter;

SELECT
    CONCAT('Q', QUARTER(OrderDate_New)) AS Quarter,
    ROUND(SUM(SalesAmount),2) AS TotalSales
FROM Sales
GROUP BY CONCAT('Q', QUARTER(OrderDate_New))
ORDER BY CONCAT('Q', QUARTER(OrderDate_New));

-- Question 11 ProductionCost
SELECT
    YEAR(OrderDate_New) AS Year,
    ROUND(SUM(SalesAmount),2) AS TotalSales,
    ROUND(SUM(ProductionCost),2) AS TotalProductionCost
FROM Sales
GROUP BY YEAR(OrderDate_New)
ORDER BY YEAR(OrderDate_New);

-- Question 12 ProductionCost
-- Total Sales
SELECT ROUND(SUM(SalesAmount),2) AS TotalSales
FROM Sales;

-- Total Profit
SELECT ROUND(SUM(Profit),2) AS TotalProfit
FROM Sales;

-- Total Quantity
SELECT SUM(OrderQuantity) AS TotalQuantity
FROM Sales;

-- Top 10 Products
SELECT
    EnglishProductName,
    ROUND(SUM(SalesAmount),2) AS TotalSales
FROM Sales
GROUP BY EnglishProductName
ORDER BY TotalSales DESC
LIMIT 10;

-- Top 10 Customers
SELECT
    FullName,
    ROUND(SUM(SalesAmount),2) AS TotalSales
FROM Sales
GROUP BY FullName
ORDER BY TotalSales DESC
LIMIT 10;

-- Sales by Country
SELECT
    SalesTerritoryCountry,
    ROUND(SUM(SalesAmount),2) AS TotalSales
FROM Sales
GROUP BY SalesTerritoryCountry
ORDER BY TotalSales DESC;

-- Sales by Product Category
SELECT
    EnglishProductCategoryName,
    ROUND(SUM(SalesAmount),2) AS TotalSales
FROM Sales
GROUP BY EnglishProductCategoryName
ORDER BY TotalSales DESC;

-- Question 13 ProductionCost
CREATE VIEW SalesDashboard AS
SELECT
    YEAR(OrderDate_New) AS Year,
    MONTHNAME(OrderDate_New) AS MonthName,
    CONCAT('Q', QUARTER(OrderDate_New)) AS Quarter,
    SalesTerritoryCountry,
    EnglishProductCategoryName,
    EnglishProductName,
    FullName,
    OrderQuantity,
    SalesAmount,
    ProductionCost,
    Profit
FROM Sales;

SELECT *
FROM SalesDashboard;