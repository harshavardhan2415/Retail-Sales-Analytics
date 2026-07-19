# Project Workflow

## Project Title

**Indian E-Commerce Customer Behavior Analysis**

---

# Workflow Overview

This project follows a complete end-to-end data analytics workflow, starting from raw data collection and ending with an interactive Power BI dashboard that provides actionable business insights.

## Workflow Diagram

```text
Raw Dataset
     │
     ▼
Python Data Cleaning
     │
     ▼
Feature Engineering
     │
     ▼
MySQL Database
     │
     ▼
SQL Analysis
     │
     ▼
Power BI Dashboard
     │
     ▼
Business Insights
```

---

# Step 1: Data Collection

* Collected the Indian E-Commerce dataset.
* Reviewed the dataset structure.
* Identified business objectives and analysis requirements.

---

# Step 2: Data Cleaning Using Python

Python and Pandas were used to prepare the dataset for analysis.

Tasks performed:

* Removed duplicate records
* Handled missing values
* Corrected inconsistent data
* Converted appropriate data types
* Standardized categorical values
* Exported the cleaned dataset

---

# Step 3: Feature Engineering

Additional columns were created to improve analysis and reporting.

Features created include:

* Visit Day
* Visit Month
* Visit Weekday
* Visit Season
* Session Duration Bucket
* Revenue Normalized

---

# Step 4: Database Creation

The cleaned dataset was imported into MySQL.

Tasks performed:

* Created the database
* Created the required table
* Imported the cleaned CSV file
* Verified imported records

---

# Step 5: SQL Analysis

SQL queries were written to analyze business performance.

Analysis included:

* Revenue Analysis
* Customer Analysis
* Product Analysis
* Payment Method Analysis
* Marketing Channel Analysis
* Regional Performance
* Customer Rating Analysis

The SQL queries were executed using **Visual Studio Code** with the **MySQL extension**, making it easier to manage queries and database connections.

---

# Step 6: Power BI Dashboard Development

The processed dataset was imported into Power BI.

Interactive dashboards were developed using DAX measures, charts, KPI cards, slicers, and filters.

### Dashboard Pages

## Page 1 – Sales Overview

* Total Revenue
* Total Orders
* Total Customers
* Average Order Value
* Conversion Rate
* Monthly Revenue Trend
* Revenue by Product Category
* Revenue by Marketing Channel

---

## Page 2 – Sales & Operations

* Operational KPIs
* Revenue by Location
* Revenue by Payment Method
* Orders by Device Type

---

## Page 3 – Customer Behavior & Engagement

* Customer Journey Funnel
* Purchase Rate
* Cart Abandonment Rate
* Average Session Time
* Average Pages Viewed by Device Type
* Average Session Time by User Type

---

## Page 4 – Product Performance & Customer Feedback

* Average Rating
* Total Reviews
* Helpful Votes
* Average Rating by Product Category
* Revenue by Product Category
* Average Rating by Marketing Channel

---

# Step 7: Business Insights

The dashboard provides insights into:

* Revenue performance
* Customer purchasing behavior
* Product performance
* Marketing effectiveness
* Payment preferences
* Regional sales
* Customer engagement
* Customer satisfaction

---

# Step 8: Version Control

Git and GitHub were used to maintain version control throughout the project.

Project files include:

* Python scripts
* SQL scripts
* Power BI dashboard
* Documentation
* Project reports

---

# Technologies Used

* Python
* Pandas
* MySQL
* SQL
* Visual Studio Code
* Power BI
* Git
* GitHub

---

# Project Outcome

This project demonstrates an end-to-end data analytics workflow by transforming raw e-commerce data into meaningful business insights. It showcases practical skills in data cleaning, SQL analysis, data visualization, dashboard development, and business intelligence using industry-standard tools.
