# Fundamentos de Bases de Datos - Curso

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
    - CHAR(n): Reserva en memoria una cantidad especifica para el valor de la cadena o caracteres
    - VARCHAR(n) : Permite almacenar hasta 255 caracteres
    - TEXT : Cuando se requiere más de 255 caracteres, TEXT es la mejor opción
- Números:
    - INTEGER: Es para números enteros
    - BIGINT : Es para declarar enteros muy largos 
    - SMALLINT : Para declarar enteros cortos 
    - DECIMAL : Es para declarar números complejos (decimales)
    - NUMERIC : 
- Fecha/Hora:
    - DATE : Contiene solo fecha
    - TIME : Contiene solo la hora
    - DATETIME : Contiene fecha y hora 
    - TIMESTAMP :
- Lógicos:
    - BOOLEAN : Solo puede tener dos valores, puede ser 1 o 0. 

### Constaints (Restricciones)
Hay diferentes que definen para nuestros atributos:
- NOT NULL : No se permite que existan valores nulos
- UNIQUE : Se asegura que cada valor en la columna no se repita
- PRIMARY KEY : Es una combinación de NOT NULL y UNIQUE
- FOREIGN KEY : Identifica de manera única una tupla en otra tabla
- CHECK : Se asegura que el valor en la columna cumpla una condición dad
- DEFAULT : Coloca un valor por defecto cuando no hay un valor especifico
- INDEX : Se crea por columna para permitir búsquedas más rapidas

## Normalización
Ayuda a dejar todo en una forma normal, son 12 reglas que nos permite separar cada componente de la base de datos y que se ajuste para que la entidad sea relacional 

- **Primera Forma**(1FN): Atributos Atómicos (Sin campos repetidos), 
- **Segunda Forma**(2FN): Cumple 1FN y cada campo de la tabla debe depender de una clave única.
- **Tercera Forma Normal** (3FN): Cumple 1FN y 2FN y los campos que NO son clave NO deben tener dependencias.
- **Cuarta Forma Normal** : (4FN) Cumple 1FN, 2FN, 3FN los campos multivaluados se identifican por una clave única.

## RDB ¿Qué?
RDBMS (Relational Database Management System) es un programa que nos ayuda a crear las bases de datos (Manejadores de bases de datos) como: MySQL, PostgreSQL, SQLServer entre muchos más

## Instalación local de un RDBMS
Basca con descargar el instalador .exe de la página oficial, descargar los recursos necesarios y esperar a que el servidor encienda

## Clientes gráficos
MySQL Workbench es una herramienta gráfica que representa como funciona una base de datos, es bien intuitiva, hay diferentes manejadores de bases de datos. 
CREATE SCHEMA platziblog

## Servicios administrados
Ahora es raro utilizar las bases de datos localmente, ahora se utilizan servicios Cloud que es rentar un servidor para alojar la base de datos. 

## Historia de SQL
Structured Query Language (Lenguaje estructurado de consultas)
SQL Nace cuando las empresas tenían la necesidad de extrar datos de sus bases de datos, tenían diferentes RDBS y no sabían comunicarse o tener un lenguaje en común, por eso mismo SQL nació y planteó bases estructuradas para unificar un lenguaje para consultas de las bases de datos.

NOSQL (Not Only Structured Query Language): No solo utilices SQL, hay manejadores de bases de datos que no son relacionados

## DDL Create *
**Data Definition Language** (Create, Alter, Drop), permite crear estructura de una base de datos, las entidades, relaciones. 
- Create: Funciona para crear, procedimientos, vistas, tablas, indices
- Alter: Funciona para modificar o alterar valores dentro de una tabla
- Drop: Ayuda a borrar objetos, permite borrar tablas, bases de datos o columnas de una tabla 

**¿Que son las vistas?**: Las vistas son una proyección de nuestros datos de forma entendible.

## DML
Data Manipulation Language
**Comandos**:
- Insert : Esta sentencia funciona para agregar registros a una tabla
- Update : Esta sentencia funciona para actualizar valores de registros ya existentes
- Delete : Esta sentencia funciona para eliminar registros, gracias a la clausula WHERE se puede lograr ser más preciso
- Select : Esta sentencia funciona para extraer datos de una base de datos
