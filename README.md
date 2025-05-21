### 🍕 Dominos Pizza Sales Report

This project provides an end-to-end analysis of pizza sales data, inspired by the business model of Domino's Pizza. It includes data exploration using SQL, a fully interactive Power BI dashboard, and an upcoming business analysis document that identifies key problems and proposes data-driven solutions.

> **Note**: The dataset used is fictional or generic, branding it as “Dominos” helps simulate a real-world business case for portfolio and presentation purposes.

## 📁 File Structure

- `SQL_Queries/pizza_sales_analysis.postgresql` – Contains all the PostgreSQL queries used for sales analysis.
- `Dominos Dashboard Page 1 & 2` – Power BI file that visualizes sales metrics and trends.
- `Business_Analysis/pizza_sales_business_analysis.docx` – A 2-page document analyzing business problems and proposed solutions.

---

## 📌 Project Highlights

- 🔍 **SQL Analysis**: Core metrics such as total revenue, order trends, and product performance.
- 📊 **Power BI Dashboard**: Interactive visuals of sales trends, pizza category performance, and top/bottom sellers.
- 📄 **Business Analysis Report**: A Word document analyzing key problems and strategic recommendations.

---

## 🛠️ Tools & Technologies

- **SQL Server / PostgreSQL** – Data Analysis and Transformation
- **Power BI** – Interactive Dashboard Creation
- **MS Word** – Business Analysis

---

## 📈 Key SQL Insights

| Metric | Description |
|--------|-------------|
| 💵 **Total Revenue** | `SUM(total_price)` |
| 📦 **Average Order Value** | `SUM(total_price) / COUNT(DISTINCT order_id)` |
| 🍕 **Total Pizzas Sold** | `SUM(quantity)` |
| 📋 **Total Orders** | `COUNT(DISTINCT order_id)` |
| 🧮 **Average Pizzas Per Order** | `SUM(quantity) / COUNT(DISTINCT order_id)` |

### 🗓️ Trend Analysis

- **Daily Orders Trend**
- **Monthly Orders Trend**

### 🔍 Category-Level Insights

- % Sales by Pizza Category & Size
- Total Quantity Sold by Category (e.g., February)
- Top/Bottom Performing Pizzas by:
  - Revenue
  - Quantity Sold
  - Total Orders

---

## 📊 Power BI Dashboard Preview

### 🟢 Page 1: Sales Overview

![Dashboard Page 1](https://github.com/Yashraaj2002/Dominos-Sales-Business-Analysis/blob/main/Dominos%20Dashboard%20Page%201.png)

---

### 🔵 Page 2: Best & Worst Sellers

![Dashboard Page 2](https://github.com/Yashraaj2002/Dominos-Sales-Business-Analysis/blob/main/Dominos%20Dashboard%20Page%202.png)


