/* ORDERING AND LIMITING DATA */

/* 1. Order */
SELECT * FROM products ORDER BY name ASC;
SELECT * FROM products ORDER BY name DESC;

SELECT * FROM products ORDER BY price DESC, name; # name ASC. Urutannya dari price baru name
SELECT * FROM products ORDER BY quantity, name DESC; # quantitynya ASC

/* 2. Limit dan offset */
SELECT * FROM products LIMIT 5; # Maksimal 5 data

SELECT * FROM products LIMIT 5 OFFSET 6;
SELECT * FROM products LIMIT 6, 5; # Sama kek diatas

SELECT * FROM products LIMIT 6, 5; # Sama kek diatas