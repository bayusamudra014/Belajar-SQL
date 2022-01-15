/* DISTINCT */

# 1. Mendapatkan quantity yang berbeda nilainya
SELECT DISTINCT quantity from products ORDER BY quantity ASC;
SELECT DISTINCT quantity, price from products ORDER BY quantity ASC;

SELECT DISTINCT quantity, id from products; /* Ga ngaruh awas! */
# Itu karena id-nya beda semua
