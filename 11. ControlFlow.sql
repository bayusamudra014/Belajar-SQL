-- Control Flow Function
-- https://dev.mysql.com/doc/refman/8.0/en/flow-control-functions.html

-- CASE : mirip switch case
SELECT id,
       CASE quantity
           WHEN 500 THEN 'Banyak Sekali'
           WHEN 100 THEN 'Ada 100'
           ELSE 'Lainnya' -- default
       END
       AS 'Kuantitasku' -- Alias opsional
FROM products;

-- IF mirip kek diexcel
SELECT id,
       price,
       IF(price <= 5000, 'Murah',
           IF(price <= 15000, 'Mahal', 'Mahal Banget'))
        AS persepsi_harga
FROM products;

-- IF NULL
SELECT id,
       name,
       IFNULL(description, 'Tidak ada :(') as description
FROM products;
