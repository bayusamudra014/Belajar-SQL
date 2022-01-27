/* Mengenai Join */
-- Untuk melakukan join, perlu memberi tahu mana si yang mau jadi referensi

SELECT * FROM wishlist
JOIN products p on p.id = wishlist.id_product;

-- Dengan Alias

SELECT w.id, name  FROM wishlist w
JOIN products p on p.id = w.id_product;

-- Alias dengan join

SELECT name, count(products.id) as jumlah_wishlist FROM products
JOIN wishlist w on products.id = w.id_product
GROUP BY products.id;

-- Multitabel

SELECT c.id, c.name, p.name, p.price FROM wishlist
JOIN customers c on c.id = wishlist.user
JOIN products p on p.id = wishlist.id_product;
