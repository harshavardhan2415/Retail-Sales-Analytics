
SELECT
    ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_data
WHERE purchased = TRUE;

SELECT
    COUNT(*) AS total_orders
FROM ecommerce_data
WHERE purchased = TRUE;

SELECT
    ROUND(AVG(revenue),2) AS average_order_value
FROM ecommerce_data
WHERE purchased = TRUE;

SELECT
    visit_month,
    ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY visit_month
ORDER BY visit_month;

SELECT
    visit_month,
    COUNT(*) AS total_orders
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY visit_month
ORDER BY visit_month;

SELECT
    visit_weekday,
    ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY visit_weekday
ORDER BY total_revenue DESC;

SELECT
    visit_season,
    ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY visit_season
ORDER BY total_revenue DESC;

SELECT
    product_category,
    ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY product_category
ORDER BY total_revenue DESC;

SELECT
    product_category,
    COUNT(*) AS total_orders
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY product_category
ORDER BY total_orders DESC;

SELECT
    payment_method,
    ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY payment_method
ORDER BY total_revenue DESC;

SELECT
    payment_method,
    COUNT(*) AS total_orders
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY payment_method
ORDER BY total_orders DESC;

SELECT
    device_type,
    ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY device_type
ORDER BY total_revenue DESC;

SELECT
    device_type,
    COUNT(*) AS total_orders
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY device_type
ORDER BY total_orders DESC;

SELECT
    marketing_channel,
    ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY marketing_channel
ORDER BY total_revenue DESC;

SELECT
    marketing_channel,
    COUNT(*) AS total_orders
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY marketing_channel
ORDER BY total_orders DESC;

SELECT
    ROUND(SUM(discount_amount),2) AS total_discount
FROM ecommerce_data
WHERE purchased = TRUE;

SELECT
    product_category,
    ROUND(AVG(discount_percent),2) AS average_discount
FROM ecommerce_data
GROUP BY product_category
ORDER BY average_discount DESC;

SELECT
    customer_id,
    ROUND(SUM(revenue),2) AS customer_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY customer_id
ORDER BY customer_revenue DESC
LIMIT 10;

SELECT
    product_category,
    ROUND(AVG(revenue),2) AS average_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY product_category
ORDER BY average_revenue DESC;

SELECT
    MIN(revenue) AS minimum_sale,
    MAX(revenue) AS maximum_sale,
    ROUND(AVG(revenue),2) AS average_sale,
    ROUND(SUM(revenue),2) AS total_sales
FROM ecommerce_data
WHERE purchased = TRUE;