# Where Operator

# Operator Perbandingan
SELECT * from products WHERE quantity = 100;
SELECT * from products WHERE quantity != 100; # Atau pake <>
SELECT * from products WHERE quantity > 100;
SELECT * from products WHERE quantity <= 100;

# Operator AND dan OR
SELECT * from products
WHERE quantity <= 100
    AND price > 15000;

SELECT * from products
WHERE quantity <= 100
    OR price > 15000;

SELECT * from products
WHERE quantity <= 100
    AND price > 15000 OR quantity > 100; # And dulu baru OR

SELECT * from products
WHERE (quantity <= 100 AND price > 15000)
   OR quantity > 100; # Sama kek diatas

# Like Op.
/* Mencari kata di string. Operasi ini lambat karena cek tiap string */
SELECT * FROM products WHERE name LIKE '%nasi%'; # Ada substring nasi
SELECT * FROM products WHERE name LIKE '%nasi'; # Diakhiri nasi
SELECT * FROM products WHERE name LIKE 'nasi%'; # Diawali nasi

SELECT * FROM products WHERE name NOT LIKE 'nasi%';

# NULL Operator
SELECT * FROM products WHERE description IS NULL;
SELECT * FROM products WHERE description IS NOT NULL;

# Between Operator
SELECT * FROM products WHERE price >= 10000 AND price <= 20000;
SELECT * FROM products WHERE price BETWEEN 10000 AND 20000; # Sama kek diatas

SELECT * FROM products WHERE price NOT BETWEEN 10000 AND 20000; # Sama kek diatas

# In Operator
/* Mencari nilai berdasarkan pilihan nilai. Mirip kek di firebase */
SELECT * FROM products WHERE quantity IN (50, 500); # Cari nilainya 50 atau 500
SELECT * FROM products WHERE quantity NOT IN (50, 500); # Cari nilainya 50 atau 500

# Regexp operator
/* Lebih lambat dari like bos, awas! */
SELECT * FROM products WHERE name REGEXP '^nasi g+';
SELECT * FROM products WHERE products.description REGEXP 'enak$';