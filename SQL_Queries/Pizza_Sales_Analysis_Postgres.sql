-- 1. Total Revenue
SELECT SUM(total_price) AS total_revenue
FROM pizza_sales;
-- 💡 The total revenue generated from pizza sales is $817,860, which shows the overall sales performance.

--------------------------------------------------------
-- 2. Average Order Value
SELECT ROUND(SUM(total_price) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM pizza_sales;
-- 💡 The average value per order is $38.30, indicating that on average, customers are spending a healthy amount per transaction.

--------------------------------------------------------
-- 3. Total Pizzas Sold
SELECT SUM(quantity) AS total_pizzas_sold
FROM pizza_sales;
-- 💡 A total of 49,574 pizzas were sold, providing insight into the scale of operations and demand for pizza.

--------------------------------------------------------
-- 4. Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales;
-- 💡 The business received 21,350 unique orders, showing the overall volume of transactions handled.

--------------------------------------------------------
-- 5. Average Pizzas Per Order
SELECT ROUND(SUM(quantity)::DECIMAL / COUNT(DISTINCT order_id), 2) AS avg_pizzas_per_order
FROM pizza_sales;
-- 💡 Customers typically order 2.32 pizzas on average per transaction, which helps understand purchasing behavior.

--------------------------------------------------------
-- 6. Daily Trend for Total Orders
SELECT TO_CHAR(order_date, 'Day') AS order_day,
       COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY order_day
ORDER BY MIN(order_date);
-- 💡 Fridays generate the highest order volume, with 3,538 orders, followed by Thursdays and Saturdays. Sundays have the least number of orders.

-- Output Sample:
-- "Friday"     → 3538 orders
-- "Thursday"   → 3239 orders
-- "Saturday"   → 3158 orders
-- "Wednesday"  → 3024 orders
-- "Tuesday"    → 2973 orders
-- "Monday"     → 2794 orders
-- "Sunday"     → 2624 orders

--------------------------------------------------------
-- 7. Monthly Trend for Orders
SELECT TO_CHAR(order_date, 'Month') AS month_name,
       COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY month_name
ORDER BY MIN(order_date);
-- 💡 July sees the highest order count (1,935), while October and September experience the least orders. Seasonal trends are noticeable here.

-- Output Sample:
-- "July"        → 1935 orders
-- "May"         → 1853 orders
-- "January"     → 1845 orders
-- "August"      → 1841 orders
-- "March"       → 1840 orders
-- "April"       → 1799 orders
-- "November"    → 1792 orders
-- "June"        → 1773 orders
-- "February"    → 1685 orders
-- "December"    → 1680 orders
-- "September"   → 1661 orders
-- "October"     → 1646 orders

-- 8. % of Sales by Pizza Category
SELECT pizza_category, 
       ROUND(SUM(total_price)::DECIMAL, 2) AS total_revenue,
       ROUND(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales), 2) AS pct
FROM pizza_sales
GROUP BY pizza_category
ORDER BY total_revenue DESC;
-- 💡 "Classic" pizzas generate the highest revenue with **$220,053.10**, accounting for **26.91%** of total sales, followed by "Supreme" and "Chicken".

-- Output Sample:
-- "Classic" → $220,053.10 (26.91%)
-- "Supreme" → $208,197.00 (25.46%)
-- "Chicken" → $195,919.50 (23.96%)
-- "Veggie"  → $193,690.45 (23.68%)

--------------------------------------------------------
-- 9. % of Sales by Pizza Size
SELECT pizza_size, 
       ROUND(SUM(total_price)::DECIMAL, 2) AS total_revenue,
       ROUND(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales), 2) AS pct
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size;
-- 💡 "Large" pizzas account for **45%** of total revenue, followed by "Medium" pizzas at **30%**. This shows that larger pizza sizes dominate sales.

-- Output Sample:
-- "Large" → 45% of total revenue
-- "Medium" → 30% of total revenue
-- "Small" → remaining percentage
-- "XL" → less than "Medium"
-- "XXL" → least in revenue share

--------------------------------------------------------
-- 10. Total Pizzas Sold by Pizza Category
SELECT pizza_category, SUM(quantity) AS total_quantity_sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY total_quantity_sold DESC;
-- 💡 "Classic" pizzas lead in sales, with **14,888** units sold, followed by "Supreme" and "Veggie" pizzas, reflecting popular preferences.

-- Output Sample:
-- "Classic" → 14,888 pizzas
-- "Supreme" → 11,987 pizzas
-- "Veggie"  → 11,649 pizzas
-- "Chicken" → 11,050 pizzas

--------------------------------------------------------
-- 11. Top 5 Pizzas by Revenue
SELECT pizza_name, SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC
LIMIT 5;
-- 💡 "Thai Chicken" leads the revenue with **$43,434**, followed closely by "Barbeque Chicken" and "California Chicken".

-- Output Sample:
-- "Thai Chicken" → $43,434
-- "Barbeque Chicken" → $42,768
-- "California Chicken" → $41,409
-- "Classic Deluxe" → $38,180
-- "Spicy Italian" → $34,831

--------------------------------------------------------
-- 12. Bottom 5 Pizzas by Revenue
SELECT pizza_name, SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue ASC
LIMIT 5;
-- 💡 "Brie Carre" is at the bottom with **$11,588**, followed by "Green Garden" and "Spinach Supreme", indicating low-performing pizza varieties.

-- Output Sample:
-- "Brie Carre" → $11,588
-- "Green Garden" → $13,955
-- "Spinach Supreme" → $15,277
-- "Mediterranean Pizza" → $15,360
-- "Spinach Pesto" → $15,596

--------------------------------------------------------
-- 13. Top 5 Pizzas by Quantity
SELECT pizza_name, SUM(quantity) AS total_pizza_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_pizza_sold DESC
LIMIT 5;
-- 💡 "Thai Chicken" is the most sold pizza with **2,371 units**, followed by "Barbeque Chicken" and "Classic Deluxe", indicating high customer demand.

-- Output Sample:
-- "Thai Chicken" → 2,371 pizzas sold
-- "Barbeque Chicken" → 2,432 pizzas sold
-- "Classic Deluxe" → 2,453 pizzas sold
-- "Hawaiian" → 2,422 pizzas sold
-- "Pepperoni" → 2,418 pizzas sold
-- K. Bottom 5 Pizzas by Quantity Sold

-- 14. Bottom 5 Pizzas by Quantity
SELECT pizza_name, SUM(quantity) AS total_pizza_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_pizza_sold ASC
LIMIT 5;
-- 💡 The bottom-selling pizzas by quantity include options like "Brie Carre" and "Green Garden", which have the least demand in terms of sales volume.

-- Output Sample:
-- "Brie Carre" → 490 pizzas sold
-- "Calabrese Pizza" → 937 pizzas sold
-- "Spinach Supreme" → 950 pizzas sold
-- "Mediterranean Pizza" → 934 pizzas sold
-- "Soppressata Pizza" → 961 pizzas sold

--------------------------------------------------------
-- 15. Top 5 Pizzas by Total Orders
SELECT pizza_name, COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders DESC
LIMIT 5;
-- 💡 The pizzas with the highest number of distinct orders are popular choices like "Classic Deluxe", "Spicy Italian", and "Pepperoni", showing consistent demand.

-- Output Sample:
-- "Classic Deluxe" → 2329 orders
-- "Thai Chicken" → 2,225 orders
-- "Pepperoni" → 2,278 orders
-- "Hawaiian" → 2,280 orders
-- "BBQ Chicken" → 2,273 orders

--------------------------------------------------------
-- 16. Bottom 5 Pizzas by Total Orders
SELECT pizza_name, COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders ASC
LIMIT 5;
-- 💡 The pizzas with the lowest total number of orders include niche items like "Brie Carre" and "Mediterranean Pizza," reflecting less frequent customer preferences.

-- Output Sample:
-- "Brie Carre" → 480 orders
-- "Mediterranean Pizza" → 912 orders
-- "Spinach Supreme" → 918 orders
-- "Calabrese Pizza" → 918 orders
-- "Chicken Pesto" → 938 orders
