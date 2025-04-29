# task-6
Monthly Revenue and Order Volume Analysis

This project demonstrates how to analyze monthly revenue and order volume using SQL and a sample `orders` table. The goal is to understand sales trends over time by grouping and aggregating data.

Objective

- Calculate **monthly revenue** using `SUM(amount)`
- Calculate **monthly order volume** using `COUNT(DISTINCT order_id)`
- Group results by **year and month**
- Sort results chronologically
- Optionally filter for specific time periods

Tools Used

- MySQL (or any compatible SQL engine)

Dataset

A sample `orders` table with 10 rows was created using this schema:

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);
