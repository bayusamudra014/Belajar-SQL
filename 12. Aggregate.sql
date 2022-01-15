-- Aggregate Function
-- https://dev.mysql.com/doc/refman/8.0/en/aggregate-functions.html

-- Aggregate itu cuma satu data, awas

SELECT COUNT(id) as totalProduct FROM products;

SELECT AVG(price) FROM products;

SELECT MIN(price) FROM products;

SELECT SUM(quantity) as TotalStock FROM products;
