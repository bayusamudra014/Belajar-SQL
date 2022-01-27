-- Groupping

SELECT quantity, COUNT(id)
FROM products
GROUP BY quantity; -- Menghitung berapa ID unik si berdasarkan quantity

SELECT id, quantity/(SELECT SUM(quantity) FROM products)
FROM products
GROUP BY id; -- Bisa gini looh

-- Mendapatkan quantity yang memliki jumlah lebih dari 1
SELECT quantity, COUNT(id) as total
FROM products
GROUP BY quantity
HAVING total > 1;

-- FILTERING, btw bisa diaggregate juga
SELECT quantity, COUNT(distinct id) FROM products
GROUP BY quantity
HAVING AVG(price) >= (SELECT AVG(price) FROM products);