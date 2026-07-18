import mysql.connector
import pandas as pd

# Configuration
db_config = {
    "host": "localhost",
    "user": "root",
    "password": "Shee@35232401",
    "database": "indian_ecommerce_analysis"
}

print("Attempting to connect to MySQL...")

try:
    conn = mysql.connector.connect(**db_config)
    
    if conn.is_connected():
        print("✓ Connected successfully to database: " + db_config["database"])
        cursor = conn.cursor()
        print("✓ Cursor established. Ready for operations.")

except mysql.connector.Error as err:
    print(f"❌ Error: {err}")
# 1. Load the CSV into a DataFrame
print("Loading CSV...")
df = pd.read_csv("data/cleaned/indian_ecommerce_cleaned.csv")

# 2. Clean the data
# Important: Replace NaN values with None, as MySQL converts None to NULL.
# NumPy NaN values are not compatible with MySQL's NULL.
df = df.where(pd.notnull(df), None)

# 3. Convert DataFrame to a list of tuples
# executemany() requires a sequence of parameter sequences (like a list of tuples)
data_to_insert = [tuple(x) for x in df.to_numpy()]
sql = """
INSERT INTO ecommerce_data (
    customer_id, session_id, visit_date, device_type, user_type, 
    marketing_channel, product_id, product_category, unit_price, quantity, 
    discount_percent, discount_amount, revenue, pages_viewed, time_on_site_sec, 
    added_to_cart, purchased, cart_abandoned, rating, review_text, 
    review_helpful_votes, payment_method, visit_day, visit_month, visit_weekday, 
    visit_season, session_duration_bucket, revenue_normalized, location
) 
VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
"""

# 5. Insert the data using executemany
try:
    print(f"Inserting {len(data_to_insert)} rows...")
    cursor.executemany(sql, data_to_insert)
    
    # 6. Commit the transaction to save changes
    conn.commit()
    print(f"✓ Success! {cursor.rowcount} rows inserted.")

except mysql.connector.Error as err:
    print(f"❌ Error inserting data: {err}")
    conn.rollback()  # Rollback in case of failure to maintain database integrity