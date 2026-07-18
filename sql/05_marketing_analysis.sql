
SELECT
    marketing_channel,
    COUNT(*) AS total_sessions
FROM ecommerce_data
GROUP BY marketing_channel
ORDER BY total_sessions DESC;

SELECT
    marketing_channel,
    COUNT(*) AS total_orders
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY marketing_channel
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
    ROUND(AVG(revenue),2) AS average_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY marketing_channel
ORDER BY average_revenue DESC;

SELECT
    marketing_channel,
    ROUND(SUM(purchased=TRUE)*100/COUNT(*),2) AS conversion_rate
FROM ecommerce_data
GROUP BY marketing_channel
ORDER BY conversion_rate DESC;

SELECT
    marketing_channel,
    ROUND(SUM(cart_abandoned=TRUE)*100/COUNT(*),2) AS cart_abandonment_rate
FROM ecommerce_data
GROUP BY marketing_channel
ORDER BY cart_abandonment_rate DESC;

SELECT
    device_type,
    COUNT(*) AS sessions
FROM ecommerce_data
GROUP BY device_type
ORDER BY sessions DESC;

SELECT
    device_type,
    ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_data
WHERE purchased=TRUE
GROUP BY device_type
ORDER BY revenue DESC;

SELECT
    device_type,
    ROUND(SUM(purchased=TRUE)*100/COUNT(*),2) AS conversion_rate
FROM ecommerce_data
GROUP BY device_type
ORDER BY conversion_rate DESC;

SELECT
    payment_method,
    COUNT(*) AS total_orders
FROM ecommerce_data
WHERE purchased=TRUE
GROUP BY payment_method
ORDER BY total_orders DESC;

SELECT
    payment_method,
    ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_data
WHERE purchased=TRUE
GROUP BY payment_method
ORDER BY revenue DESC;

SELECT
    visit_season,
    marketing_channel,
    ROUND(SUM(revenue),2) AS revenue
FROM ecommerce_data
WHERE purchased=TRUE
GROUP BY visit_season, marketing_channel
ORDER BY revenue DESC;

SELECT
    marketing_channel,
    ROUND(AVG(time_on_site_sec),2) AS avg_time_on_site
FROM ecommerce_data
GROUP BY marketing_channel
ORDER BY avg_time_on_site DESC;

SELECT
    marketing_channel,
    ROUND(AVG(pages_viewed),2) AS avg_pages_viewed
FROM ecommerce_data
GROUP BY marketing_channel
ORDER BY avg_pages_viewed DESC;

SELECT
    marketing_channel,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM ecommerce_data
GROUP BY marketing_channel
ORDER BY unique_customers DESC;