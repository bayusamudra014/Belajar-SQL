/* Datetime */
-- Lihat sini: https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html

use belajar_mysql;
desc products;

SELECT id,
       EXTRACT(MINUTE FROM created_at) AS 'Menit',
       SECOND(created_at) as 'Detik' FROM products;
