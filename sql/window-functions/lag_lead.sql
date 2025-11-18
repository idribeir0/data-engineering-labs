-- Creating a sample monthly revenue table
CREATE OR REPLACE TEMPORARY TABLE monthly_revenue (
    month DATE,
    revenue DECIMAL(10,2)
);

INSERT INTO monthly_revenue VALUES
('2024-01-01', 1000.00),
('2024-02-01', 1500.00),
('2024-03-01', 900.00),
('2024-04-01', 2000.00);

-- Month-over-month variation using LAG
SELECT
    month,
    revenue,
    LAG(revenue, 1) OVER (ORDER BY month) AS previous_revenue,
    revenue - LAG(revenue, 1) OVER (ORDER BY month) AS revenue_diff,
    CASE
        WHEN LAG(revenue, 1) OVER (ORDER BY month) IS NULL THEN NULL
        ELSE (revenue - LAG(revenue, 1) OVER (ORDER BY month)) / LAG(revenue, 1) OVER (ORDER BY month)
    END AS revenue_growth_rate
FROM monthly_revenue;

-- Simple next-value preview using LEAD
SELECT
    month,
    revenue,
    LEAD(revenue, 1) OVER (ORDER BY month) AS next_revenue
FROM monthly_revenue;
