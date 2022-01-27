/* Belajar CRUD */

# Buat dulu tabelnya
CREATE TABLE products
(
    id          varchar(100) NOT NULL,
    name        varchar(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

# 1. Create new data
INSERT INTO products(id, name, price, quantity)
    VALUES ('P001', 'Mie goreng', 10000, 5);

# Menambahkan banyak data
INSERT INTO products(id, name, description, price, quantity)
    VALUES
        ('P002', 'Mie Tektek', 'Mie kuah spesial', 20000, 100),
        ('P003', 'Nasi Goreng', 'Nasi goreng enak', 25000, 100),
        ('P004', 'Es Jom', 'Minuman berasa mangga + susu', 5000, 100);

INSERT INTO products(id, name, description, price, quantity)
    VALUES
        ('P003', 'Nasi Goreng', 'Nasi goreng enak', 25000, 100);

# 2. SELECT data (Basic)
SELECT * FROM products;

# 2.a. Where
#  Bisa gini looh, nanti lebih lanjut yes
SELECT id, name, price FROM products WHERE price > (SELECT AVG(price) FROM products);
SELECT * FROM products WHERE name LIKE 'es%'; # Mysql case insensitif jadi Es Jom keluar

# 2.b. Alias
SELECT id AS productId, name, price FROM products;

SELECT p.id AS productId,
       p.name,
       p.price
FROM products AS p;

# 3. Update data
UPDATE products
    SET price = 30000,
        quantity = 500
    WHERE id = 'P001'; # Gunakan where sebagaimana select aja

# BOleh gini juga loo
UPDATE products
    SET price = price - 1
    WHERE id= 'P001';

# 4. Delete Data
# Klo gaada gaakan error
DELETE FROM products WHERE id = 'P005';

# Keunikan Keunikan
SELECT l1.name, l2.name from products as l1, products as l2;
