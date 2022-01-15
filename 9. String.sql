/* Fungsi-fungsi manimpulasi string */
-- Lihat selengkapnya di https://dev.mysql.com/doc/refman/8.0/en/string-functions.html

SELECT CONCAT('Ku','m','bang') as result;
SELECT LENGTH('Kumbang') as length;

SELECT id, UPPER(name) as name from products;
