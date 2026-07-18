
SELECT
    COUNT(DISTINCT customer_id) AS total_customers
FROM ecommerce_data;

SELECT
    user_type,
    COUNT(DISTINCT customer_id) AS total_customers
FROM ecommerce_data
GROUP BY user_type
ORDER BY total_customers DESC;

SELECT
    user_type,
    ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY user_type
ORDER BY total_revenue DESC;

SELECT
    location,
    COUNT(DISTINCT customer_id) AS total_customers
FROM ecommerce_data
GROUP BY location
ORDER BY total_customers DESC;

SELECT
    location,
    ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY location
ORDER BY total_revenue DESC;

SELECT
    COUNT(*) AS total_purchases
FROM ecommerce_data
WHERE purchased = TRUE;

SELECT
    COUNT(*) AS cart_abandonments
FROM ecommerce_data
WHERE cart_abandoned = TRUE;

SELECT
    ROUND(
        SUM(cart_abandoned = TRUE) * 100.0 / COUNT(*),
        2
    ) AS cart_abandonment_rate
FROM ecommerce_data;

SELECT
    ROUND(
        SUM(purchased = TRUE) * 100.0 / COUNT(*),
        2
    ) AS conversion_rate
FROM ecommerce_data;

SELECT
    customer_id,
    COUNT(*) AS total_orders
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 10;

SELECT
    customer_id,
    ROUND(SUM(revenue),2) AS total_spent
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;

SELECT
    device_type,
    COUNT(DISTINCT customer_id) AS customers
FROM ecommerce_data
GROUP BY device_type
ORDER BY customers DESC;

SELECT
    device_type,
    ROUND(AVG(time_on_site_sec),2) AS avg_time_on_site
FROM ecommerce_data
GROUP BY device_type;

SELECT
    marketing_channel,
    COUNT(DISTINCT customer_id) AS customers
FROM ecommerce_data
GROUP BY marketing_channel
ORDER BY customers DESC;

SELECT
    marketing_channel,
    ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY marketing_channel
ORDER BY total_revenue DESC;

SELECT
    ROUND(AVG(pages_viewed),2) AS average_pages_viewed
FROM ecommerce_data;

SELECT
    ROUND(AVG(time_on_site_sec),2) AS average_time_on_site
FROM ecommerce_data;

SELECT
    payment_method,
    COUNT(DISTINCT customer_id) AS customers
FROM ecommerce_data
GROUP BY payment_method
ORDER BY customers DESC;

SELECT
    visit_weekday,
    COUNT(DISTINCT customer_id) AS customers
FROM ecommerce_data
GROUP BY visit_weekday
ORDER BY customers DESC;

SELECT
    visit_season,
    COUNT(DISTINCT customer_id) AS customers
FROM ecommerce_data
GROUP BY visit_season
ORDER BY customers DESC;