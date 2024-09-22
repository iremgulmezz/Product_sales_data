
SELECT 
    PRODUCTS.ProductName,
    YEAR(SALES.SaleDate) AS SaleYear,
    SUM(SALES.Quantity * PRODUCTS.Price) AS TotalSalesAmount,
    SUM(SALES.Quantity) AS TotalQuantitySold
FROM 
    SALES
JOIN 
    
    PRODUCTS ON SALES.ProductID = PRODUCTS.ProductID
GROUP BY 
    PRODUCTS.ProductName, YEAR(SALES.SaleDate);


SELECT TOP 1 
	PRODUCTS.ProductName,
	SUM(SALES.Quantity * PRODUCTS.Price) AS TotalSalesAmount
FROM
	SALES
JOIN
	PRODUCTS ON SALES.ProductID = PRODUCTS.ProductID
GROUP BY 
	PRODUCTS.ProductName
ORDER BY 
    TotalSalesAmount DESC;