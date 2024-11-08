Create Database Bumzy_DB


select * from [dbo].[Sales Data]

---retrieve total sales for each product category---
SELECT Product, SUM(Total_Sales) AS Total_Sales
FROM [dbo].[Sales Data]
GROUP BY Product
ORDER BY Total_Sales DESC;

---number of sales transactions in each region---
SELECT Region, COUNT(OrderID) AS Number_of_Transactions
FROM [dbo].[Sales Data]
GROUP BY Region
ORDER BY Number_of_Transactions DESC;

---highest selling product by total sales values---
select top 1 product, sum(Total_Sales) as HighestSellingProduct from[dbo].[Sales Data]  group by Product order by 2 desc

---total Revenue per product---
SELECT Product, SUM(Total_Sales) AS Total_Revenue
FROM [dbo].[Sales Data]
GROUP BY Product;

---monthly sales total for the current year---
SELECT Month(OrderDate) AS Month,
    SUM(Total_Sales) AS MonthlySalesTotal
FROM [dbo].[Sales Data] WHERE YEAR(OrderDate) = 2024
GROUP BY Month(OrderDate)
ORDER BY Month

---top 5 customers by total purchase amount---
select top 5 Customer_ID, sum(Total_Sales) as TotalPurchase from [dbo].[Sales Data] group by Customer_Id 
order by 2 desc

---percentage of total sales contributed by each region---
SELECT Region, SUM(Total_Sales) AS RegionTotalSales,
FORMAT(ROUND((SUM(Total_Sales) / CAST((SELECT SUM(Total_Sales) FROM [dbo].[Sales Data]) AS DECIMAL(10,2)) * 100), 1), '0.#') 
AS PercentageOfTotalSales
FROM [dbo].[Sales Data]
GROUP BY Region
ORDER BY PercentageOfTotalSales DESC

 ---Products with no sales in the last quarter---

select product from [dbo].[Sales Data] group by product having 
sum(case when OrderDate >= 2024-01-01 AND OrderDate < 2024-04-01
then 1 else 0 end) = 0; -- Q1 of 2024