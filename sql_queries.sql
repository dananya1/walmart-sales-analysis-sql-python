CREATE DATABASE walmart_sales_analysis;
USE walmart_sales_analysis;

CREATE TABLE walmart_sales (
    invoice_id VARCHAR(50),
    branch VARCHAR(10),
    city VARCHAR(50),
    category VARCHAR(100),
    unit_price VARCHAR(50),
    quantity VARCHAR(20),
    date VARCHAR(20),
    time VARCHAR(20),
    payment_method VARCHAR(50),
    rating VARCHAR(20),
    profit_margin VARCHAR(20)
);

# Step-1 Verify Data

select count(*) as total_rows
FROM walmart_sales;

select * from walmart_sales 
limit 5;

# Step-2 Business Analysis Queries

# Query-1 Total Sales Quantity
select sum(quantity) as total_quantity_sold
from walmart_sales;

# Query-2 Average Rating
select round(avg(rating),2) as average_rating
from walmart_sales;

# Query-3 Sales by City
select city, sum(quantity) as total_quantity
from walmart_sales
group by city
order by total_quantity desc;

# Query-4 Most Used Payment Menthod
select payment_method, count(*) as total_transactions
from walmart_sales
group by payment_method
order by total_transactions desc;

# Query-5 Top Product Categories
select category, sum(quantity) as total_quantity
from walmart_sales
group by category
order by total_quantity desc;

# Query-6 Highest Rated Category
select category, round(avg(rating),2) as avg_rating
from walmart_sales
group by category
order by avg_rating desc;

# Query-7 Branch-wise Sales
select branch, sum(quantity) as total_sales
from walmart_sales
group by branch
order by total_sales desc;

