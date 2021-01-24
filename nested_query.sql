SELECT new_table_projection.date, COUNT(*) AS post_count
FROM (
    SELECT DATE(MIN(fecha_publicacion)) AS date, YEAR(fecha_publicacion) AS post_year
    FROM posts
    GROUP BY post_year
) AS new_table_projection
GROUP BY new_table_projection.date
ORDER BY new_table_projection.date;

-- Otro ejemplo
SELECT * 
FROM post 
WHERE fecha_publicacion = (
    SELECT MAX(fecha_publicacion)
    FROM posts
);