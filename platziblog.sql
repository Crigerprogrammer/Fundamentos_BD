CREATE TABLE categorias(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre_categoria VARCHAR(30) NOT NULL
);

CREATE TABLE etiquetas(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre_etiqueta VARCHAR(30) NOT NULL
);

CREATE TABLE usuarios(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    login VARCHAR(30) NOT NULL,
    password VARCHAR(32) NOT NULL,
    nickname VARCHAR(40) NOT NULL UNIQUE, 
    email VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE posts(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(130) NOT NULL,
    fecha_publicacion TIMESTAMP,
    contenido TEXT NOT NULL,
    estatus CHAR(8) DEFAULT 'activo',
    usuario_id INT NOT NULL, 
    categoria_id INT NOT NULL,

    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);  

CREATE TABLE comentarios(
    id PRIMARY KEY NOT NULL AUTO_INCREMENT,
    cuerpo_comentario TEXT NOT NULL,
    usuario_id INT NOT NULL,
    post_id INT NOT NULL,

    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (post_id) REFERENCES posts(id)
)

CREATE TABLE posts_etiquetas(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    post_id INT NOT NULL,
    etiqueta_id INT NOT NULL
)