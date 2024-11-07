# LITA-CAPSTONE-PROJECT-1

## Project Title 1: Sales Performance Analysis for a Retail Store

[Project Overview](#project-overview)

[Project Objectives](#project-objectives)

[Tools Used](#tools-used)

[Key Insights](#key-insights)

[Outcome](#outcome)

[Data Collected](#data-collected)

[Steps](#steps)

### Project Overview
---
In this project, I analyzed the sales performance of a retail store to uncover insights into product popularity, regional sales patterns, and monthly trends. This project involves:

- Data exploration and analysis using Excel.
- Data querying using SQL.
- Visualization and dashboard creation in Power BI.

### Project Objectives
1. Identify top-selling products and regions.
2. Analyze monthly sales trends.
3. Highlight customers with the highest purchase amounts.
4. Provide actionable insights for stakeholders.

### Tools Used
- **Microsoft Excel**: [Download Here](https://www.microsoft.com)
  1. Initial data exploration
  2. Pivot Tables
  3. Basic metrics calculations.
      
- **SQL**: Extracting deeper insights and answering key business questions [Download Here](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
- **PowerBI**: Building an interactive dashboard to visualize insights [Download Here](https://www.microsoft.com/en-us/power-platform/products/power-bi/downloads)
- **GitHub**: for Portfolio Building [Download Here](https://github.com)

### Key Insights
Highlighted top-performing products, identified low-sales periods, and recommended strategies for inventory management and targeted promotions. This project is aimed at conducting an in-depth analysis of sales data to identify trends, performance gaps, and opportunities for improvement. Focused on metrics such as top-selling products, regional performance, total sales, product popularity, customer behavior and monthly sales trends.

### Outcome
Improved understanding of sales patterns, which could inform strategic decisions for store operations and marketing.

### Data Collected
The dataset includes the following columns;
- **OrderID**: Unique identifier for each order.
- **Customer Id**: Unique identifier for each customer.
- **Product**: Type of product sold.
- **Region**: Region where the sale occurred.
- **OrderDate**: Date of the order.
- **Quantity**: Quantity of products ordered.
- **UnitPrice**: Price per unit of the product.
- **Total Sales**: Calculated as Quantity * UnitPrice.
- **Average Sales**: Average sales across product and Total sales.
- **Product Average Sales**: Average sales per product.
- **Total Revenue by Region**: Total revenue generated in each region.

Let's proceed with the insights required for this analysis

### Steps
1. ## Excel Analysis
- Summarized total sales by product, region, and month using Pivot Tables.
- Calculated average sales per product and total revenue by region.
- Created reports highlighting key metrics and trends.

![Pivot Table](https://github.com/user-attachments/assets/0e239feb-28ef-418e-87ea-fa47fc4725c2)



![Pivot Table 2](https://github.com/user-attachments/assets/ac15e23f-6330-4ed0-a48e-dbaf5d02b1f2)


![Pivot Table 3](https://github.com/user-attachments/assets/d3ec1854-2935-4b6b-aa41-5d7ee1ae00e5)

![Excel formula](https://github.com/user-attachments/assets/9244144d-ca1b-41f0-9aee-3217bf730f29)



## 2. SQL Analysis
Using SQL, I extracted insights such as:
- **Total sales for each product category.**

```SQL
SELECT Product, SUM(Total_Sales) AS Total_Sales
FROM [dbo].[Sales Data]
GROUP BY Product
ORDER BY Total_Sales DESC;
```

![SQL](https://github.com/user-attachments/assets/66ebcef1-28b3-43ae-b1fe-6fafd59d6ab4)



- **Number of sales transactions in each region.**

```SQL
SELECT Region, COUNT(OrderID) AS Number_of_Transactions
FROM [dbo].[Sales Data]
GROUP BY Region
ORDER BY Number_of_Transactions DESC;
```
![SQL Query ](https://github.com/user-attachments/assets/b1975264-ccdd-4c07-868c-0ae657bd604d)

  
- **Highest-selling product by total sales value.**

```SQL
---highest selling product by total sales values---
select top 1 product, sum(Total_Sales) as HighestSellingProduct from[dbo].[Sales Data]  group by Product order by 2 desc
```
![SQL Query 1](https://github.com/user-attachments/assets/4ac1b6e6-bd46-4410-83e2-482d9a21166f)

- **Total revenue per product.**

```SQL
SELECT Product, SUM(Total_Sales) AS Total_Revenue
FROM [dbo].[Sales Data]
GROUP BY Product;
```

![SQL Query 2](https://github.com/user-attachments/assets/ab258e60-9e4a-4c6f-9c5b-d056441a10a0)


- Monthly sales totals for the current year.
- Top 5 customers by total purchase amount.
- Percentage of total sales contributed by each region.
- Identify products with no sales in the last quarter.


