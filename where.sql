-- Where sirve para filtrar
SELECT *
FROM posts
WHERE id < 50;

-- Filtrar por estatus
SELECT * 
FROM posts
WHERE estatus = 'activo';

-- Operador != Quiere que decir que no sea igual
SELECT *
FROM posts
WHERE id != 50;

-- Propiedad LIKE
SELECT *
FROM posts
WHERE titulo LIKE '%escandalo%';

-- Propiedad BETWEEN
SELECT *
FROM posts
WHERE fecha_publicacion BETWEEN '2023-01-01' AND '2025-12-31';

-- Propiedad YEAR
SELECT * 
FROM posts 
WHERE YEAR(fecha_publicacion) BETWEEN '2023' AND '2024';

-- Propiedad MONTH
SELECT * 
FROM posts 
WHERE MONTH(fecha_publicacion) = '04'