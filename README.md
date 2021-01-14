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

Así como en programación las entidades tienen atributos que la describen, como por ejemplo los atributos de un automóvil pueden ser:
- Volante
- Llantas
- Motor
- Modelo

**Atributo Único o Llave**
Este atributo es único y existen dos tipos de llaves, los naturales y artificiales:
- Naturales: Son aquellos valores que vienen dentro de la naturaleza del objeto, como ejemplo: El no de serie de un equipo, El DPI de una persona
- Artificiales: Son valores creados arbitrariamente por el usuario para diferenciar los objetos como un codigo aleatorio pero único.

Existen dos tipos de entidades: Fuertes y Débiles
- Entidades Fuertes: Son entidades que pueden existir ellas solas
- Entidades Débiles: Únicamente pueden existir gracias a una entidad fuerte, se complementa.

## Relaciones
Es la manera de ligar las diferentes entidades o objetos.
*Ejemplo:*
Las relaciones se representan con un rombo 
Las relaciones se relacionan con verbos 

¿Como funcionan?: 
Por ejemplo, un dueño **tiene** un automovil
Un jugador **pertenece** a un equipo

Cuando existe un atributo multi, a veces se convierten en entidades porque tienen vida propia

### Cardinalidad
- Cardinalidad 1 a 1, ejemplo: 1 persona tiene 1 serie de contacto.  

- Cardinalidad 0 a 1, es una cardinalidad opcional ejemplo: sesion_actual tiene 1 usuario , pero un usuario tiene 0 sesion_actual 

- Cardinalidad 1 a muchos, ejemplo: una persona puede tener muchos automóviles pero un autómovil solo puede pertenecer una persona

- Cardinalidad muchos a muchos: Esta cardinalidad tiende a ser algo confusa pero un ejemplo sería: Un alumno puede tener muchas clases ó una clase puede tener muchos alumnos

## Diagrama ER
Funciona para realizar un mapa, se construye antes de crear la base de datos, para saber cuales entidades tenemos, y cual es el papel de cada entidad.

## Tipos de Datos y Constraints
**Tipos de Datos**:
- Texto:
    - CHAR(n)
    - VARCHAR(n)
    - TEXT
- Números:
    - INTEGER
    - BIGINT
    - SMALLINT
    - DECIMAL
    - NUMERIC
- Fecha/Hora:
    - DATE
    - TIME
    - DATETIME
    - TIMESTAMP
- Lógicos:
    - BOOLEAN
