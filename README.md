# Domino’s Pizza Sales & Performance Dashboard 🍕📊

## Project Goal 🎯  
Address key business questions:

- What are the peak sales periods and daily order trends?
- Which pizza categories, sizes, and individual products perform best or worst?
- How can we use average order value and order frequency to improve promotions?
- What insights can guide product mix, pricing, and operations decisions?

Analyze Domino’s pizza sales data to extract actionable insights that help improve marketing strategies, inventory planning, and customer satisfaction.

---

## Data Preparation Process ⚙️

1. **Data Cleaning & Normalization:**  
   Used Excel Power Query to clean column headers, unify date formats, and standardize product and category names for accurate grouping.

2. **ETL & Storage:**  
   Imported the cleaned dataset into PostgreSQL with proper data types (dates, text, numerics) and normalized key fields for queries.

3. **Data Aggregation & Manipulation:**  
   Applied SQL techniques such as `GROUP BY`, `SUM`, `COUNT DISTINCT`, and CTEs to generate core KPIs and breakdowns by category, size, and product.

4. **Business Logic Implementation:**  
   Built logic to calculate AOV, pizzas per order, top/bottom performers by revenue, and seasonal trends across multiple dimensions.

5. **Visualization Setup:**  
   Created a 2-page interactive Power BI dashboard with KPI cards, dynamic filters, category comparisons, and trend visualizations.


---

## Tools & Technologies 🛠️

- **PostgreSQL:** Data aggregation, KPI logic, product ranking, time-series analysis  
- **Excel Power Query:** Raw data cleaning and structuring  
- **Power BI:** Dashboard development with DAX, dynamic visuals, and filters

---

## Project Structure 📁

- `Dominos_Dashboard.pbix` — Power BI file with two dashboard pages: KPI Overview and Product Performance.
- `sql/dominos_pizza_sales_analysis.sql` — Consolidated SQL queries for revenue, order trends, top/bottom sellers, and category-level insights.
- `Dominos Business Case.pdf` — Business analyst-style case study identifying the problem, approach, and solution recommendations  

---

## Key Insights & Business Impact 💡

- Average order value and quantity per order calculated to support bundled offers and upsell strategies.
- Daily and monthly trends help schedule promotions and staff during peak ordering hours.
- Category-level insights highlight high-performing segments and underperforming items needing marketing or removal.
- Product performance tracking identifies best and worst sellers by revenue, quantity, and popularity, guiding menu decisions.
- Visual KPIs and drilldowns support quick answers to operational and marketing questions.

---

## 📊 Dashboard 1: Sales KPIs & Trend Overview  
![Dashboard Page 1](https://github.com/Yashraaj2002/Dominos-Sales-Business-Analysis/blob/main/Dominos%20Dashboard%20Page%201.png)  
💡 Shows core KPIs (Total Revenue, AOV, Total Orders, Quantity Sold), with daily/monthly trend charts and category breakdowns.

---

## 📋 Dashboard 2: Best & Worst Performing Products  
![Dashboard Page 2](https://github.com/Yashraaj2002/Dominos-Sales-Business-Analysis/blob/main/Dominos%20Dashboard%20Page%202.png)  
💡 Highlights top-selling and lowest-performing pizzas by revenue, orders, and units sold — supporting smarter menu and marketing strategies.
