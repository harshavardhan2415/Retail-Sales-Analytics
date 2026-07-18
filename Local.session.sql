SELECT
    MIN(visit_date) AS earliest_date,
    MAX(visit_date) AS latest_date,
    COUNT(*) AS total_rows
FROM ecommerce_data;