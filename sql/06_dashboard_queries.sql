
SELECT ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_data
WHERE purchased=TRUE;

SELECT COUNT(*) AS total_orders
FROM ecommerce_data
WHERE purchased=TRUE;

SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM ecommerce_data;

SELECT
ROUND(AVG(revenue),2) AS average_order_value
FROM ecommerce_data
WHERE purchased=TRUE;

SELECT
ROUND(SUM(purchased=TRUE)*100/COUNT(*),2) AS conversion_rate
FROM ecommerce_data;

SELECT
ROUND(SUM(cart_abandoned=TRUE)*100/COUNT(*),2) AS cart_abandonment_rate
FROM ecommerce_data;

SELECT
visit_month,
ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_data
WHERE purchased=TRUE
GROUP BY visit_month
ORDER BY visit_month;

SELECT
product_category,
ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_data
WHERE purchased=TRUE
GROUP BY product_category
ORDER BY revenue DESC;

SELECT
marketing_channel,
ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_data
WHERE purchased=TRUE
GROUP BY marketing_channel
ORDER BY revenue DESC;

SELECT
device_type,
ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_data
WHERE purchased=TRUE
GROUP BY device_type
ORDER BY revenue DESC;

SELECT
payment_method,
ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_data
WHERE purchased=TRUE
GROUP BY payment_method
ORDER BY revenue DESC;

SELECT
location,
ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_data
WHERE purchased=TRUE
GROUP BY location
ORDER BY revenue DESC;

SELECT
visit_season,
ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_data
WHERE purchased=TRUE
GROUP BY visit_season
ORDER BY revenue DESC;

SELECT
user_type,
ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_data
WHERE purchased=TRUE
GROUP BY user_type
ORDER BY revenue DESC;

SELECT
product_category,
ROUND(AVG(rating),2) AS average_rating
FROM ecommerce_data
GROUP BY product_category
ORDER BY average_rating DESC;