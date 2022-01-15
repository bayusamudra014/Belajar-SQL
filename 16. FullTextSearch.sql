-- Full Text Search
CREATE TABLE products
(
    id          varchar(100) NOT NULL,
    name        varchar(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FULLTEXT productSearch (name, description)
);

ALTER TABLE products
    ADD FULLTEXT descriptionSearch (description);

ALTER TABLE products
    ADD FULLTEXT nameSearch (name);

ALTER TABLE products
    ADD FULLTEXT productSearch (name, description);

ALTER TABLE products
    DROP INDEX productSearch; -- Karena fulltext tu Indeks Khusus!

SELECT * FROM products;

-- MODE
# Natural Language: mencari seperti bahasa natural per kata
# https://dev.mysql.com/doc/refman/8.0/en/fulltext-natural-language.html
# Cuma bisa nyari indeks persis yang ada
SELECT id, name FROM products
    WHERE MATCH(name) AGAINST('mie' IN NATURAL LANGUAGE MODE);

# Boolean: Pencarian dengan kemampuan mengandung kata atau tak mengandung  kata
# https://dev.mysql.com/doc/refman/8.0/en/fulltext-boolean.html
SELECT id, name FROM products
    WHERE MATCH(name) AGAINST('+mie -goreng' IN BOOLEAN MODE);


# Query Expansion: Seperti natural lang tapi ada membuatan thesaurus
# https://dev.mysql.com/doc/refman/8.0/en/fulltext-query-expansion.html
SELECT id, name FROM products
    WHERE MATCH(name) AGAINST('mie' WITH QUERY EXPANSION);
-- Karena mie ada yg ada gorengnya, maka cari goreng juga.
