CREATE DATABASE PRODUCT_SALES_DATA

CREATE TABLE PRODUCTS (
	ProductID int PRIMARY KEY,
	ProductName nvarchar(100),
	Price decimal(10,2) 
);

INSERT INTO PRODUCTS VALUES (1, 'Laptop', 1500.00)
INSERT INTO PRODUCTS VALUES (2, 'Mouse', 25.00)
INSERT INTO PRODUCTS VALUES (3, 'Keyboard', 45.00)

CREATE TABLE SALES (
	SaleID int Primary Key,
	ProductID int FOREIGN KEY REFERENCES PRODUCTS(ProductID),
	Quantity int,
	SaleDate datetime
);

INSERT INTO Sales (SaleID, ProductID, Quantity, SaleDate) VALUES
(1, 1, 2, '2024-01-10'),
(2, 2, 5, '2024-01-15'),
(3, 1, 1, '2024-02-20'),
(4, 3, 3, '2024-03-05'),
(5, 2, 7, '2024-03-25'),
(6, 3, 2, '2024-04-12');

