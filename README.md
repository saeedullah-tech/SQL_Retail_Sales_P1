# Retail Sales Data Analysis (SQL Project)

## Project Overview

This project focuses on analyzing retail sales data using SQL. The goal is to explore the dataset, clean the data, and answer important business questions through SQL queries. The analysis provides insights into sales performance, customer behavior, and product categories.

## Dataset Description

The dataset contains retail transaction information with the following columns:

* **transactions_id** – Unique ID for each transaction
* **sale_date** – Date of the sale
* **sale_time** – Time when the transaction occurred
* **customer_id** – Unique customer identifier
* **gender** – Customer gender
* **age** – Customer age
* **category** – Product category (e.g., Clothing, Beauty)
* **quantity** – Number of items purchased
* **price_per_unit** – Price per item
* **cogs** – Cost of goods sold
* **total_sale** – Total value of the transaction

## Project Steps

### 1. Database Creation

A table named **retail_sales** was created to store the sales data.

### 2. Data Cleaning

Queries were written to check for missing or null values in important columns to ensure data quality.

### 3. Data Exploration

Basic exploration queries were used to understand the dataset, such as:

* Total number of sales
* Total number of customers
* Available product categories

### 4. Business Analysis

Several SQL queries were written to answer key business questions, including:

* Sales transactions on a specific date
* Total sales by product category
* Average age of customers purchasing from the Beauty category
* Transactions with sales greater than 1000
* Number of transactions by gender and category
* Top 5 customers based on total spending
* Unique customer count by category

### 5. Sales Time Analysis

Sales were categorized into different time shifts based on the transaction time:

* **Morning** – Before 12 PM
* **Afternoon** – Between 12 PM and 5 PM
* **Evening** – After 5 PM

This helps analyze when most transactions occur during the day.

## Skills Demonstrated

* SQL Data Cleaning
* Data Exploration
* Aggregation Functions
* GROUP BY Analysis
* Common Table Expressions (CTE)
* Business Data Analysis

## Tools Used

* PostgreSQL / SQL
* GitHub for project version control

## Purpose of the Project

This project demonstrates how SQL can be used to analyze retail data and extract meaningful business insights. It is part of a data analytics portfolio to showcase SQL skills used in real-world business scenarios.
