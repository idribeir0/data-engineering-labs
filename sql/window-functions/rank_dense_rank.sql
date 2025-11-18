-- Creating a sample seller performance table
CREATE OR REPLACE TEMPORARY TABLE sellers (
    seller_id INT,
    name STRING,
    total_sales DECIMAL(10,2)
);

INSERT INTO sellers VALUES
(1, 'Ana', 5000.00),
(2, 'Bruno', 7000.00),
(3, 'Carlos', 7000.00),
(4, 'Diana', 3000.00),
(5, 'Edu', 10000.00);

-- Ranking sellers by total sales
SELECT
    seller_id,
    name,
    total_sales,
    RANK() OVER (ORDER BY total_sales DESC) AS rank_standard,
    DENSE_RANK() OVER (ORDER BY total_sales DESC) AS rank_dense
FROM sellers;
