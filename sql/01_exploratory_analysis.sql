
-- Total records
SELECT COUNT(*) AS total_records
FROM ecommerce_data;

-- Preview data
SELECT *
FROM ecommerce_data
LIMIT 10;

-- Check for NULL values
SELECT
    SUM(customer_id IS NULL) AS customer_id_nulls,
    SUM(revenue IS NULL) AS revenue_nulls,
    SUM(product_category IS NULL) AS product_category_nulls
FROM ecommerce_data;

-- Revenue summary
SELECT
    MIN(revenue) AS min_revenue,
    MAX(revenue) AS max_revenue,
    AVG(revenue) AS avg_revenue
FROM ecommerce_data;

-- Product categories
SELECT
    product_category,
    COUNT(*) AS total_orders
FROM ecommerce_data
GROUP BY product_category
ORDER BY total_orders DESC;

-- Device usage
SELECT
    device_type,
    COUNT(*) AS sessions
FROM ecommerce_data
GROUP BY device_type
ORDER BY sessions DESC;

-- Payment methods
SELECT
    payment_method,
    COUNT(*) AS orders
FROM ecommerce_data
GROUP BY payment_method
ORDER BY orders DESC;