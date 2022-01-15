/* Artimatika */

# 1. Math Op
SELECT 10 + 10 as jawaban;
SELECT 10 - 10 as jawaban;
SELECT 10 * 10 as jawaban;

SELECT 10 DIV 3 as jawaban;
SELECT 10 / 3 as jawaban;

SELECT 10 % 3 as jawaban;
SELECT 10 MOD 3 as jawaban;

SELECT id, name, price DIV 1000 as 'Price in K' from products;

# 2. Fungsi Matematika
SELECT SIN(1/6 * PI());
SELECT * FROM products WHERE SIN(products.price) > 0;
SELECT id, name, SIN(price) FROM products;
