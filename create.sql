-- Primeras sentencias de  SQL
-- CREATE DATABASE

CREATE DATABASE test_db;

USE DATABASE test_db;

-- CREATE TABLE

CREATE TABLE people(
    id_person INT,
    last_name VARCHAR(255),
    first_name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255)
);