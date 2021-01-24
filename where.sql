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