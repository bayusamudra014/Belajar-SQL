/* Belajar Tabel */

# 1. Engine
/*
    Mysql storage engine adalah engine untuk menyimpan data.
    Engine paling favorite adalah InnoDB.

    Klo mo lihat semua engine gunakan:
*/
SHOW ENGINES;

# 2. Melihat tabel
use belajar_mysql;
SHOW TABLES;

# 3. Membuat Tabel

CREATE TABLE pengguna
(
    id INT PRIMARY KEY,
    name VARCHAR(100),
    username VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    verified BOOLEAN
) ENGINE = InnoDB;

# 3. Lihat struktur tabel
DESCRIBE pengguna;
desc pengguna;
show create table pengguna;

# 4. Mengubah struktur tabel
ALTER TABLE pengguna
    ADD COLUMN alamat MEDIUMTEXT,
    DROP COLUMN name;

ALTER TABLE pengguna
    MODIFY alamat MEDIUMTEXT AFTER id;

ALTER TABLE pengguna
    RENAME COLUMN alamat TO address;

# Mengubah jenis column di table
ALTER TABLE pengguna
    ADD COLUMN name varchar(100) AFTER id,
    ADD COLUMN timestamp TIMESTAMP
        NOT NULL DEFAULT CURRENT_TIMESTAMP FIRST;

ALTER TABLE pengguna
    MODIFY id varchar(11) NOT NULL,
    MODIFY name varchar(100) NOT NULL,
    MODIFY address mediumtext NOT NULL,
    MODIFY username varchar(100) UNIQUE NOT NULL,
    MODIFY password varchar(100) NOT NULL,
    MODIFY verified BOOLEAN NOT NULL DEFAULT FALSE;

# 5. Clear semua data di dalam table
TRUNCATE pengguna;

# 6. Hapus Tabel
DROP TABLE pengguna;