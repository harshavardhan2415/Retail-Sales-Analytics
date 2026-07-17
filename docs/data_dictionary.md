# Data Dictionary

| Column | Data Type | Description |
|---------|----------|-------------|
| customer_id | String | Unique identifier for each customer |
| session_id | String | Unique browsing session identifier |
| visit_date | Date | Date of customer visit |
| device_type | Categorical | Device used (Mobile, Desktop, Tablet) |
| user_type | Categorical | New or Returning customer |
| marketing_channel | Categorical | Marketing source (Organic, Ads, Email, Social, etc.) |
| product_id | String | Unique product identifier |
| product_category | Categorical | Product category |
| unit_price | Decimal | Price per product before discount |
| quantity | Integer | Number of units purchased |
| discount_percent | Decimal | Discount percentage applied |
| discount_amount | Decimal | Total discount amount |
| revenue | Decimal | Final revenue generated from the order |
| pages_viewed | Integer | Number of pages viewed during the session |
| time_on_site_sec | Integer | Total time spent on the website (seconds) |
| added_to_cart | Boolean | Indicates whether the product was added to the cart |
| purchased | Boolean | Indicates whether the purchase was completed |
| cart_abandoned | Boolean | Indicates whether the cart was abandoned |
| rating | Decimal | Customer rating (1–5) |
| review_text | Text | Customer review |
| review_helpful_votes | Integer | Number of helpful votes received for the review |
| payment_method | Categorical | Payment method (UPI, Card, COD, Wallet, etc.) |
| visit_day | Integer | Day of the month |
| visit_month | Integer | Month of the year |
| visit_weekday | Categorical | Day of the week |
| visit_season | Categorical | Season of the visit |
| session_duration_bucket | Categorical | Grouped session duration (Short, Medium, Long) |
| revenue_normalized | Decimal | Normalized revenue used for analysis/modeling |
| location | String | Customer location (City/State) |