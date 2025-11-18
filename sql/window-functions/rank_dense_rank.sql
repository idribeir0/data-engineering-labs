-- creating a sample orders table

CREATE OR REPLACE TEMPORARY TABLE orders (
    customer_id INT,
    order_id INT,
    amount DECIMAL(10,2)
    order_date DATE
);

INSERT INTO order VALUES
(1, 101, 100.00, '2021-01-01'),
(1, 102, 200.00, '2021-01-02'),
(2, 103, 150.00, '2021-01-03'),
(2, 104, 300.00, '2021-01-04'),
(3, 105, 120.00, '2021-01-05'),
(3, 106, 250.00, '2021-01-06'),

-- using row number to order each customer orders
SELECT
    customer_id,
    order_id,
    amount,
    order_date,
    ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS rn 
FROM orders

-- selecting only the first order from each customer

SELECT * 
FROM (
    SELECT 
    customer_id,
    order_id,
    amount,
    order_date,
    ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS rn
FROM orders
)
WHERE rn = 1;
