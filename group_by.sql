-- SENTENCIA GROUP BY
SELECT estatus, COUNT(*) AS post_quantity
FROM posts 
GROUP BY estatus;

-- Usando YEAR
SELECT YEAR(fecha_publicacion) AS post_year, COUNT(*) AS post_quantity 
FROM posts 
GROUP BY post_year;

-- Propiedad MONTHNAME
SELECT estatus, MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_quantity
FROM posts
GROUP BY estatus, post_month;