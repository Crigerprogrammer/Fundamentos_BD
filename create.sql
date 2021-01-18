-- Primeras sentencias de  SQL
-- CREATE DATABASE

CREATE DATABASE test_db;

USE DATABASE test_db;

-- CREATE TABLE

CREATE TABLE people(
    id_person INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    last_name VARCHAR(255),
    first_name VARCHAR(255),
    adress VARCHAR(255),
    city VARCHAR(255)
);

-- CREATE VIEWS

CREATE VIEW v_brasil_customers AS 
SELECT customer_name, contact_name 
FROM customers 
WHERE country = 'Brasil';

--- ALTER TABLE

ALTER TABLE people 
ADD date_of_birth DATE;

ALTER TABLE people
ALTER COLUMN date_of_birth YEAR;

ALTER TABLE people
DROP COLUMN date_of_birth;

-- DROP
-- Tabla
DROP TABLE people;
-- Base de datos
DROP DATABASE test_db;