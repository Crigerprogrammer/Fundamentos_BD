-- Usando consultas para buscar valores nulos
SELECT *
FROM posts 
WHERE usuario_id IS NULL;

-- Query consultas para los not null
SELECT *
FROM posts
WHERE usuario_id IS NOT NULL
    AND estatus = 'activo'
    AND id < 50
    AND categoria_id = 2
    AND YEAR(fecha_publicacion) = '2025';