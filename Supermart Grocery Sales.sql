CREATE TABLE Supermart_Grocery_Sales (
Order_ID VARCHAR(50),
Customer VARCHAR(50),
Category VARCHAR(50),
Sub_Category VARCHAR(50),
City VARCHAR(50),
Order_Date VARCHAR(50),
Region VARCHAR(50),
Sales NUMERIC(10,2),
Discount FLOAT(10,2),
PROFIT FLOAT,
State VARCHAR(50)
);

LOAD DATA LOCAL INFILE "C:/Users/Darko/OneDrive/Documents/Supermart Grocery Sales - Retail Analytics Dataset.csv"
INTO TABLE supermart_grocery_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM supermart_grocery_sales;

SELECT * FROM supermart_grocery_sales LIMIT 10;

SELECT * FROM supermart_grocery_sales WHERE Order_ID IS NULL OR PROFIT IS NULL;

DELETE FROM supermart_grocery_sales WHERE Order_ID IS NULL OR PROFIT IS NULL;

SELECT Order_ID, COUNT(Order_ID) AS duplicate_count
FROM supermart_grocery_sales
GROUP BY Order_ID
HAVING COUNT(Order_ID) >1;

SELECT * FROM supermart_grocery_sales;






