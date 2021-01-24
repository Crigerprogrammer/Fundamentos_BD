-- ORDER BY
SELECT * 
FROM posts 
ORDER BY fecha_publicacion ASC;

-- DESC
SELECT * 
FROM posts 
ORDER BY fecha_publicacion DESC;

-- LIMIT trae un limite de registros
SELECT *
FROM posts 
ORDER BY fecha_publicacion ASC
LIMIT 5;

-- HAVING es igual a where, pero se utiliza cuando después se agrupa un valor
SELECT MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) AS post_quantity
FROM posts 
GROUP BY estatus, post_month
HAVING post_quantity > 1
ORDER BY post_month;
