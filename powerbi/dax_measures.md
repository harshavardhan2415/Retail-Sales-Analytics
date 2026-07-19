# DAX Measures

This document contains the DAX measures used to build KPIs and analytical visuals in the Power BI dashboard.

---

# Sales KPIs

## Total Revenue

```DAX
Total Revenue =
SUM(indian_ecommerce_cleaned[revenue])
```

---

## Total Orders

```DAX
Total Orders =
COUNT(indian_ecommerce_cleaned[session_id])
```

---

## Total Customers

```DAX
Total Customers =
DISTINCTCOUNT(indian_ecommerce_cleaned[customer_id])
```

---

## Average Order Value

```DAX
Average Order Value =
DIVIDE([Total Revenue], [Total Orders])
```

---

## Purchase Rate

```DAX
Purchase Rate =
DIVIDE(
    CALCULATE(
        DISTINCTCOUNT(indian_ecommerce_cleaned[session_id]),
        indian_ecommerce_cleaned[purchased] = 1
    ),
    DISTINCTCOUNT(indian_ecommerce_cleaned[session_id])
)
```

Format: Percentage

---

# Customer Behavior KPIs

## Cart Abandonment Rate

```DAX
Cart Abandonment Rate =
DIVIDE(
    CALCULATE(
        DISTINCTCOUNT(indian_ecommerce_cleaned[session_id]),
        indian_ecommerce_cleaned[cart_abandoned] = 1
    ),
    DISTINCTCOUNT(indian_ecommerce_cleaned[session_id])
)
```

Format: Percentage

---

## Average Session Time (Minutes)

```DAX
Average Session Time (Min) =
DIVIDE(
    AVERAGE(indian_ecommerce_cleaned[time_on_site_sec]),
    60
)
```

---

# Product Performance KPIs

## Average Rating

```DAX
Average Rating =
AVERAGE(indian_ecommerce_cleaned[rating])
```

---

## Total Reviews

```DAX
Total Reviews =
COUNT(indian_ecommerce_cleaned[review_text])
```

---

## Total Helpful Votes

```DAX
Total Helpful Votes =
SUM(indian_ecommerce_cleaned[review_helpful_votes])
```

---

# Notes

* All KPIs are dynamic and respond to slicers and filters.
* Percentage measures are formatted as **Percentage**.
* Time-based measures are displayed in **minutes**.
* These measures are reused across multiple Power BI report pages to maintain consistency and reduce duplication.
