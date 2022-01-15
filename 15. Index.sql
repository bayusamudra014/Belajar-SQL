-- Indexing
-- Optimasi table dengan menggunakan Balanced Tree
/*
    Jika kita membuat indeks (col1, col2, col3) kita
    akan lebih cepat mencari untuk (col1), (col1,col2), (col1,col2,col3)

    Index bisa melambat proses write bos!

    Klo buat PK atau Constraint Unique, gausa bikin Index!
*/

CREATE TABLE sellers
(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    PRIMARY KEY (id),
    UNIQUE KEY (email),
    INDEX nameIndex (name)
) ENGINE = InnoDB;

ALTER TABLE products
    ADD INDEX indeksPriceQuantity (price, quantity);

ALTER TABLE products
    DROP INDEX indeksPriceQuantity;
