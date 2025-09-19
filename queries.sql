-- queries.sql
-- Example queries for the E-Commerce Database

-- 1. Basic Select / Filter
SELECT * 
FROM Customers
WHERE signup_date >= '2024-01-01';

-- 2. JOIN Example: All orders with customer names
SELECT o.order_id, c.first_name, c.last_name, o.order_date, o.total_amount
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id;

-- 3. Aggregation: Top 5 products by revenue
SELECT p.product_name, SUM(oi.quantity * oi.price_each) AS total_revenue
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC
LIMIT 5;

-- 4. Subquery / CTE: Customers with no orders
SELECT c.customer_id, c.first_name, c.last_name
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1 FROM Orders o WHERE o.customer_id = c.customer_id
);

-- 5. Indexing Example
CREATE INDEX idx_orders_customer_id ON Orders(customer_id);
