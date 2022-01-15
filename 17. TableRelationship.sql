-- Table Relationship
# Istilah
/*
    1. Foreign Key
       Kolom dengan referensi ke tabel lain.
       Pastikan tipe datanya harus sama dengan ID tujuan
*/

CREATE TABLE wishlist
(
    id int NOT NULL AUTO_INCREMENT,
    id_product VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_wlproduct
        FOREIGN KEY (id_product) REFERENCES products (id)
) ENGINE = InnoDB;

ALTER TABLE wishlist
    DROP CONSTRAINT fk_wlproduct;

ALTER TABLE wishlist
    ADD CONSTRAINT fk_wlproduct
        FOREIGN KEY (id_product) REFERENCES products (id);

# Coba tambah wistlist
INSERT INTO wishlist(id_product)
    VALUES ('P004');

# Gabisa ni klo mode RESTRICT (default)
DELETE FROM products WHERE id='P004';
INSERT INTO wishlist(id_product)
    VALUES ('P005');

# Behaviour Foreign Key
/*
    | Behaviour     | On Delete Key             | On Update Key             |
    | ------------  | ------------------------- | ------------------------- |
    | RESTRICT      | Tertolak                  | Tertolak                  |
    | CASCADE       | Data akan ikut dihapus    | Data akan ikut berubah    | *
    | NO ACTION     | Data dibiarkan            | Data DIbiarkan            | *
    | SET NULL      | col  yg nge-Ref jadi NULL | col  yg ngeref jadi NULL  |

    * Data disini maksudnya data yg ngereference row yang dimaksud
*/

ALTER TABLE wishlist
    ADD CONSTRAINT fk_wlproduct
        FOREIGN KEY (id_product) REFERENCES products (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; # Update sama delete  bisa diset bebas

ALTER TABLE wishlist
    ADD CONSTRAINT fk_wlproduct
        FOREIGN KEY (id_product) REFERENCES products (id)
        ON UPDATE CASCADE; # Deletenya jadi default, yaitu RESTRICT

SELECT * FROM wishlist;