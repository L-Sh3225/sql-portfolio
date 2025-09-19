-- sample_data.sql
INSERT INTO Customers (customer_id, first_name, last_name, email, signup_date) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '2024-01-15'),
(2, 'Bob', 'Smith', 'bob.smith@example.com', '2024-02-20'),
(3, 'Charlie', 'Brown', 'charlie.brown@example.com', '2024-03-05');

INSERT INTO Products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 899.99),
(2, 'Headphones', 'Electronics', 199.99),
(3, 'Desk Chair', 'Furniture', 149.99),
(4, 'Notebook', 'Stationery', 2.99);

INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2024-04-01', 1099.98),
(2, 2, '2024-04-02', 149.99),
(3, 1, '2024-04-05', 2.99);

INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price_each) VALUES
(1, 1, 1, 1, 899.99),
(2, 1, 2, 1, 199.99),
(3, 2, 3, 1, 149.99),
(4, 3, 4, 1, 2.99);
