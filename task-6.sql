CREATE DATABASE ONLINE_SALES;
USE ONLINE_SALES;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);
INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-15', 150.00, 101),
(2, '2024-01-25', 200.00, 102),
(3, '2024-02-05', 300.00, 101),
(4, '2024-02-18', 250.00, 103),
(5, '2024-03-10', 175.00, 104),
(6, '2024-03-21', 225.00, 105),
(7, '2024-03-29', 325.00, 106),
(8, '2024-04-05', 275.00, 107),
(9, '2024-04-15', 180.00, 108),
(10, '2024-05-01', 100.00, 109);
SELECT * FROM orders;

#Use SUM() for revenue
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue
FROM 
    orders
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;
 
 #COUNT(DISTINCT order_id) for volume
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    orders
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;
    
    #Use ORDER BY for sorting
    SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    orders
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;
    
    #Limit results for specific time periods
    SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    orders
WHERE 
    order_date BETWEEN '2024-01-01' AND '2024-03-31'
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;




