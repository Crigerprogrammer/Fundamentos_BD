# Fundamentos de Bases de Datos

## Historia de la persistencia de la información
¿Por qué necesitamos persistencia? 
Desde el inicio de los tiempos la humindad a buscado maneras de almacenar datos, ya sea sucesos historicos o situaciones importantes a recordar.  

El primer registro que se tiene es el uso de piedras o monumentos para almacenar datos, el problema de estos esque no era portable y con el tiempo podría ser dañado por la naturaleza, hongos entre otros  

El segundo registro que se tiene es el uso del papel, los chinos revolucionaron con este nuevo tipo de almacenamiento, cumplia con la portabilidad y facilidad de almacenar, más sin embargo el papel es débil y tiende a romperse o dañarse con el paso del tiempo.  

Luego en el sigo XX se tiene otro salto con las cintas film, las cuales permiten almacener una gran cantidad de data y que permanezaca intecta por siglos, el problema esque para re escribir en estas cintar, requiere de equipo especial y costoso de conseguir, lo que únicamente funciona para almacenar.  

A inicios del siglo XXI (actualidad), nacieron las unidades de almacenamiento (CD, USB, HDD, SSD y otros) los que permiten almacenar data por medio de bit (0 y 1).  

El último salto para el almacenamiento de datos es gracias a la nube, es un método de almacenar datos y poderlos consumir desde cualquier parte del mundo, y poder utilizarlos con cualquier persona...

### Entonces... ¿Qué son las bases de datos?
Las bases de datos se dividen en dos: **Relacionales** y **No Relacionales**.
Ejemplos de bases de datos relacionales:
- SQL Server
- MySQL
- PostgreSQL
- Maria DB
- Oracle
Ejemplos de bases de datos no relacionales:
- Cassandra
- Redis
- MongoDB
- neo4j

### Servicios de bases de datos:
- Auto Administrados: Tú te encargas de mantenimientos, parches, optimización del server, actualizaciones etc.
- Administrados: Terceros se encargar de ese trabajo por ti, ejemplos como AWS, Google, Azure de Microsoft y todas las nubes que ofrencen servicio cloud. 

## Introducción a las bases de datos relacionales

Las bases de datos surgen de la necesidad de conservar la información más allá de lo que existe en la memoria RAM.

Las bases de datos basadas en archivos eran datos guardados en texto plano, fáciles de guardar pero muy difíciles de consultar y por la necesidad de mejorar esto nacen las bases de datos relacionales. Su inventor Edgar Codd dejó ciertas reglas para asegurarse de que toda la filosofía de las bases de datos no se perdiera, estandarizando el proceso.

## Entidades y Atributos
Una entidad es algo similar a un objeto como en programación, representa algo en el mundo real incluso algo abstracto.
*Ejemplo*:
- Entidad Manzana
- Entidad Automóvil

