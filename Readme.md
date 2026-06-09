# 🛒 Zepto Inventory Analytics | SQL Data Analyst Portfolio Project

## 📌 Project Overview

This project simulates a real-world Data Analyst workflow using inventory data from Zepto, one of India's leading quick-commerce platforms. The objective is to transform raw product inventory data into meaningful business insights using SQL.

From data exploration and cleaning to inventory analysis and revenue estimation, this project demonstrates the practical SQL skills used by analysts in retail, e-commerce, and product-driven businesses.

---

## 🎯 Project Objectives

* Build and manage a structured SQL database from raw inventory data
* Perform Exploratory Data Analysis (EDA) to understand product distribution and stock availability
* Clean and standardize inconsistent pricing data
* Generate business insights using advanced SQL queries
* Practice real-world analytical thinking and reporting

---

## 📂 Dataset Information

The dataset was sourced from Kaggle and contains product listings scraped from Zepto's platform.

Each row represents a unique product SKU (Stock Keeping Unit). The same product may appear multiple times due to different package sizes, quantities, weights, or promotional offers—similar to how products are managed in actual e-commerce catalogs.

### Dataset Columns

| Column                 | Description                             |
| ---------------------- | --------------------------------------- |
| sku_id                 | Unique product identifier (Primary Key) |
| name                   | Product name                            |
| category               | Product category                        |
| mrp                    | Maximum Retail Price (₹)                |
| discountPercent        | Discount percentage offered             |
| discountedSellingPrice | Final selling price after discount      |
| availableQuantity      | Available inventory units               |
| weightInGms            | Product weight in grams                 |
| outOfStock             | Stock availability status               |
| quantity               | Number of units per package             |

---

## 🛠️ Tech Stack

* SQL
* MySQL
* Kaggle Dataset
* Data Cleaning
* Exploratory Data Analysis (EDA)
* Business Intelligence Concepts

---

## 🔄 Project Workflow

### 1️⃣ Database Design & Setup

* Created a structured inventory database
* Defined appropriate data types
* Implemented a primary key for product identification

### 2️⃣ Data Import & Validation

* Imported CSV dataset into SQL database
* Resolved encoding and formatting issues
* Validated successful data ingestion

### 3️⃣ Exploratory Data Analysis

Key analyses performed:

* Total product count
* Category distribution
* Stock availability analysis
* Duplicate product investigation
* Missing value detection
* Product catalog exploration

### 4️⃣ Data Cleaning

Data quality improvements included:

* Removing invalid records
* Handling null values
* Eliminating zero-priced products
* Standardizing pricing formats
* Converting prices from paise to rupees

### 5️⃣ Business Insights & Analytics

Generated actionable insights such as:

#### 💸 Pricing & Discount Analysis

* Top discounted products
* Products with minimal discounts
* Premium products with low promotional offers

#### 📦 Inventory Analysis

* In-stock vs out-of-stock products
* Category-wise inventory availability
* Total inventory weight by category

#### 📈 Revenue Analysis

* Estimated category-wise revenue potential
* High-value inventory identification

#### 🎯 Product Value Analysis

* Price-per-gram calculations
* Best value-for-money products
* Product weight segmentation (Low, Medium, Bulk)

#### 🏆 Category Performance

* Categories with highest average discounts
* Most valuable inventory categories
* Product concentration by category

---

## 📊 Key Business Questions Answered

✔ Which products offer the highest discounts?

✔ Which categories generate the highest potential revenue?

✔ Which expensive products are currently unavailable?

✔ Which categories provide the best value to customers?

✔ How is inventory distributed across product categories?

✔ Which products deliver the best price-per-gram value?

---

## 📁 Project Outcome

This project showcases how SQL can be used to convert raw inventory data into business-ready insights. It reflects the day-to-day responsibilities of a Data Analyst working in retail, e-commerce, supply chain, and product analytics environments.


