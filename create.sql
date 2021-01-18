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