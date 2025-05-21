### 🍕 Dominos Pizza Sales Report

This project provides an end-to-end analysis of pizza sales data, inspired by the business model of Domino's Pizza. It includes data exploration using SQL, a fully interactive Power BI dashboard, and an upcoming business analysis document that identifies key problems and proposes data-driven solutions.

> **Note**: The dataset used is fictional or generic, branding it as “Dominos” helps simulate a real-world business case for portfolio and presentation purposes.

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

## 📂 File Structure
Dominos-Pizza-Sales-Report/
│
├── 📁 SQL_Queries/
│   └── pizza_sales_analysis.sql               # All SQL queries used for analysis
│
├── 📁 PowerBI_Dashboard/
│   └── pizza_sales_dashboard.pbix             # Power BI report file
│   └── dashboard_screenshots/                 # Screenshots for README or Word doc
│       └── overview.png
│       └── sales_trends.png
│
├── 📁 Business_Analysis/
│   └── pizza_sales_business_analysis.docx     # 2-page business analysis (solution-focused)
│   └── charts/                                # (Optional) Any exported visuals from Power BI
│       └── category_sales_chart.png
│       └── top_pizzas_chart.png

## 📊 Power BI Dashboard Preview

### 🟢 Page 1: Sales Overview

![Dashboard Page 1](./PowerBI_Dashboard/dashboard_screenshots/dashboard_page1.png)

---

### 🔵 Page 2: Best & Worst Sellers

![Dashboard Page 2](./PowerBI_Dashboard/dashboard_screenshots/dashboard_page2.png)


