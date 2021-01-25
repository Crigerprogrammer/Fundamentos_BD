-- QUERY Para saber todos los tags de los post de manera descendente
SELECT posts.titulo, GROUP_CONCAT(nombre_etiqueta)
FROM posts 
INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY posts.id
ORDER BY num_etiquetas DESC;

-- Query para saber que etiqueta nunca han escrito en el blog
SELECT * 
FROM etiquetas 
LEFT JOIN posts_etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
WHERE posts_etiquetas.etiqueta_id IS NULL;

-- Query saber que categoria tiene más post
SELECT c.nombre_categoria, COUNT(*) AS cant_posts
FROM categorias AS c
INNER JOIN posts AS p ON c.id = p.categoria_id 
GROUP BY c.id 
ORDER BY cant_posts DESC
LIMIT 1;

-- Query para saber que usuario escribe más
SELECT u.nickname, COUNT(*) AS cant_posts 
FROM usuarios AS u 
INNER JOIN posts AS p ON u.id = p.usuario_id
GROUP BU u.id 
ORDER BY cant_posts DESC;

-- Query para saber que usuario escribe más y que categoría escribe más
SELECT u.nickname, COUNT(*) AS cant_posts, GROUP_CONCAT(nombre_categoria)
FROM usuarios AS u 
INNER JOIN posts AS p ON u.id = p.usuario_id 
INNER JOIN categorias AS c ON c.id = p.categoria_id
GROUP BY u.id 
ORDER BY cant_posts DESC;

-- Query para saber usuarios que no han escrito posts
SELECT * 
FROM usuarios AS u 
LEFT JOIN posts ON u.id = posts.usuario_id
WHERE posts.usuario_id IS NULL 