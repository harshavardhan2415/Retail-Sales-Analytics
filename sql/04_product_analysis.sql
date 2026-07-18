
SELECT
    product_category,
    COUNT(*) AS total_orders
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY product_category
ORDER BY total_orders DESC;

SELECT
    product_category,
    ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY product_category
ORDER BY total_revenue DESC;

SELECT
    product_category,
    SUM(quantity) AS total_quantity_sold
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY product_category
ORDER BY total_quantity_sold DESC;

SELECT
    product_category,
    ROUND(AVG(unit_price),2) AS average_price
FROM ecommerce_data
GROUP BY product_category
ORDER BY average_price DESC;

SELECT
    product_category,
    ROUND(AVG(discount_percent),2) AS average_discount
FROM ecommerce_data
GROUP BY product_category
ORDER BY average_discount DESC;

SELECT
    product_category,
    ROUND(SUM(discount_amount),2) AS total_discount
FROM ecommerce_data
GROUP BY product_category
ORDER BY total_discount DESC;

SELECT
    product_category,
    ROUND(AVG(rating),2) AS average_rating
FROM ecommerce_data
GROUP BY product_category
ORDER BY average_rating DESC;

SELECT
    product_category,
    SUM(review_helpful_votes) AS helpful_votes
FROM ecommerce_data
GROUP BY product_category
ORDER BY helpful_votes DESC;

SELECT
    product_category,
    COUNT(review_text) AS total_reviews
FROM ecommerce_data
GROUP BY product_category
ORDER BY total_reviews DESC;

SELECT
    product_category,
    ROUND(AVG(revenue),2) AS average_revenue
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY product_category
ORDER BY average_revenue DESC;

SELECT
    product_category,
    MAX(revenue) AS highest_sale
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY product_category
ORDER BY highest_sale DESC;

SELECT
    product_category,
    MIN(revenue) AS lowest_sale
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY product_category
ORDER BY lowest_sale;

SELECT
    product_category,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM ecommerce_data
GROUP BY product_category
ORDER BY unique_customers DESC;

SELECT
    product_category,
    COUNT(*) AS added_to_cart
FROM ecommerce_data
WHERE added_to_cart = TRUE
GROUP BY product_category
ORDER BY added_to_cart DESC;

SELECT
    product_category,
    COUNT(*) AS completed_purchases
FROM ecommerce_data
WHERE purchased = TRUE
GROUP BY product_category
ORDER BY completed_purchases DESC;

SELECT
    product_category,
    ROUND(AVG(quantity),2) AS average_quantity
FROM ecommerce_data
GROUP BY product_category
ORDER BY average_quantity DESC;

SELECT
    product_category,
    ROUND(AVG(revenue_normalized),4) AS normalized_revenue
FROM ecommerce_data
GROUP BY product_category
ORDER BY normalized_revenue DESC;

SELECT
    product_category,
    COUNT(DISTINCT payment_method) AS payment_options_used
FROM ecommerce_data
GROUP BY product_category
ORDER BY payment_options_used DESC;

SELECT
    product_category,
    COUNT(DISTINCT device_type) AS device_types
FROM ecommerce_data
GROUP BY product_category
ORDER BY device_types DESC;

SELECT
    product_category,
    COUNT(DISTINCT marketing_channel) AS marketing_channels
FROM ecommerce_data
GROUP BY product_category
ORDER BY marketing_channels DESC;