-- Constraint

-- UNIQUE Constraint
# Membuat kolom jadi unik mirip PK
CREATE TABLE customers
(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uniqueEmail (email)
);


-- Altering
ALTER TABLE products
    ADD UNIQUE KEY uniqueId (id);

-- atau
ALTER TABLE products
    ADD CONSTRAINT uniqueId UNIQUE (id);

--  Hapus Constraint
ALTER TABLE products
    DROP CONSTRAINT uniqueId;

# CHECK Constraint
CREATE TABLE products
(
    id          varchar(100) NOT NULL,
    name        varchar(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT priceCheck CHECK ( price >= 2000 )
);

-- Altering
ALTER TABLE products
    ADD CONSTRAINT priceCheck CHECK ( price >= 2000 AND price < 100000)


