-- INSERT
INSERT INTO people(last_name, first_name, adress, city)
VALUES ('Hernandez', 'Cristian', 'Villaflores', 'Guatemala')

-- UPDATE
UPDATE people
SET last_name = 'Barrios', city = 'Ciudad'
WHERE id_person = 1;

UPDATE people
SET first_name = 'Gerardo'
WHERE city = 'Ciudad';

UPDATE people
SET first_name = 'Juan';

-- DELETE
DELETE FROM people
WHERE id_person = 1;

DELETE FROM people;