SELECT * FROM [SuperStore_Sales_Dataset - Copy]

--Monthly sales
SELECT order_Month, SUM(COGS) as Sales,SUM(Profit)as Profit FROM [SuperStore_Sales_Dataset - Copy] 
GROUP BY Order_Month 
ORDER BY Sales Desc

--Sales by region
SELECT Region,SUM(COGS) as Sales FROM [SuperStore_Sales_Dataset - Copy]
GROUP BY Region
ORDER BY Sales DESC

--Sales by Category
SELECT Category,SUM(COGS) as Sales FROM [SuperStore_Sales_Dataset - Copy]
GROUP BY Category
ORDER BY Sales DESC

--TOP 10 PRODUCTS BY REVENUE
SELECT TOP 10 Product_Name, COGS as REVENUE FROM [SuperStore_Sales_Dataset - Copy]
ORDER BY COGS DESC


--Return Rate by Category
SELECT Category,COUNT(Order_ID) as Orders, SUM(Returns) as Returns,(SUM(Returns)*100)/COUNT(Order_ID) as 'Return_Percentage(%)' FROM [SuperStore_Sales_Dataset - Copy]
GROUP BY Category

SELECT * FROM [SuperStore_Sales_Dataset - Copy]
--Customer Segment Performance
SELECT Segment,SUM(COGS) as Sales FROM [SuperStore_Sales_Dataset - Copy]
GROUP BY Segment
ORDER BY SUM(COGS) DESC
