/* Belajar tipe data */

# Tipe data dalam satu kolom tu harus sama
# Kita harus menentukan tipe data saat buat table nantinya

# 1. Tipe data nummber
# 1.a. Integer : Bilangan bulat, boleh signed dan unsigned
#   - TINYINT : char klo di C
#   - SMALLINT : short klo di C
#   - MEDIUMINT : Besar datanya 3 byte
#   - INT : int klo di C (2 Miliyar kebawah aman)
#   - BIGINT : long long int klo di C++

# 1.b. FLoating Point
#   - FLOAT : float (32 bit)
#   - DOUBLE : float (64 bit)

# 1.c. DECIMAL(maks_digit, jumlah_koma = 0)
#   contoh: DECIMAL(5,2) cocok ama 999.99

# 1.d. Attribute
/*
    Kita bisa looh bikin gini
    - INT(3) bisa menampung 999
    - INT(3) ZEROFILL menyebabkan 7 ditampilkan sebagai 007
*/

# 2. String
/*
    a. CHAR dan VARCHAR
        Menyimpan string. perbedaan keduanya adalah pada CHAR
        bila nilai yg disimpan kudang dari ukurannya, akan di
        fill sama sesuatu sehingga ukurannya sesuai dengan
        jumlah yg didefinisikan. Kli varchar (variable character),
        klo kurang dari ukuran definisinya, simpan aja apa adanya.

        Contoh : Bila menyimpan string "AB" di CHAR(4) akan tesimpan
        string 4 bytes dengan isis "AB  " (kosong oleh karena layout)
        Bila disimpen pake VARCHAR(4), yg disimpen cuma 3 byte karena
        ditambah diakhirnya karakter \0.

    b. TEXT
        - TINYTEXT maksimal menyimpan 255 karakter
        - TEXT maksimal menyimpan 65535 karakter
        - MEDIUMTEXT maksimal menyimpan 2**24 karakter (~16MB)
        - LONGTEXT maksimal menyimpan 2**32 karakter (~4GB)

    c. ENUM
        Tipe data ini ditentukan apa yg bisa dimasukin
        Contoh : ENUM('A','B') cuma bisa isi string 'A' dan 'B'
*/

# 3. Date and Time

/*
    Tipe data ini diperuntukan untuk menyimpan tanggal dan waktu di mysql
    Hal ini akan mempermudah dalam manupulasi waktu

    1. DATE : Format YYYY-MM-DDD. Contoh 2020-10-10
    2. DATETIME : YYYY-MM-DD HH:MM:SS. Contoh  2020-10-10 10:10:10
    3. TIMESTAMP : Mirip DATETIME, tapi digunakan untuk stempel waktu.
        penyimpanan TIMESTAMP berdasarkan waktu UTC nanti biasanya
    4. TIME : HH:MM:SS
    5. YEAR : YYYY
 */

# 4. Boolean
/* Mysql insensitive jadi boleh nulis TRUE atau true atau false */

# 5. Tipe data lain
/* Lihat dokumentasi https://dev.mysql.com/doc/refman/8.0/en/data-types.html */