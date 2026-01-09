CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    sale_date DATE,
    product_category VARCHAR(50),
    region VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2)
);

INSERT INTO sales (sale_id, sale_date, product_category, region, quantity, unit_price) VALUES
(1, '2025-06-03', 'Electronics', 'North', 3, 2400.00),
(2, '2025-06-06', 'Furniture', 'South', 5, 370.00),
(3, '2025-06-11', 'Clothing', 'East', 10, 50.00),
(4, '2025-06-14', 'Electronics', 'West', 2, 600.00),
(5, '2025-06-19', 'Clothing', 'North', 8, 80.00);




/* What product categories does the company trades? */

SELECT product_category, SUM(quantity * unit_price) AS total_sales
FROM sales
GROUP BY product_category
ORDER BY total_sales DESC;

/*
 product_category | total_sales
------------------+-------------
 Electronics      |     8400.00
 Furniture        |     1850.00
 Clothing         |     1140.00
(3 wiersze)
*/



/* What region does the company operates? */

SELECT region, AVG(quantity * unit_price) AS avg_transaction_value
FROM sales
GROUP BY region;

/*
 region | avg_transaction_value
--------+-----------------------
 East   |  500.0000000000000000
 South  | 1850.0000000000000000
 West   | 1200.0000000000000000
 North  | 3920.0000000000000000
(4 wiersze)
*/



/* What product categories was the bestseller in June '25? */

SELECT product_category, SUM(quantity) AS total_units
FROM sales
WHERE sale_date BETWEEN '2025-06-01' AND '2025-06-30'
GROUP BY product_category
ORDER BY total_units DESC
LIMIT 1;

/*
 product_category | total_units
------------------+-------------
 Clothing         |          18
(1 wiersz)
*/


