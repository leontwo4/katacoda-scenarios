# Lesen/Filtern von JSON Daten in PostgreSQL

`SELECT
*
FROM students;`{{execute}}
## Operatoren

### `->`-Operator

| Operant type | Beschreibung           |
| ------------ | ---------------------- |
| int          | Get JSON array element |
| text         | Get JSON object field  |

Filtern `->`mit nach **key** mit Rückgabe als JSON:

`SELECT
id,
attributes -> 'grades' -> 0  AS firstGrade
FROM students;`{{execute}}

`SELECT
id,
attributes -> 'username' AS username
FROM students;`{{execute}}

### `->>`-Operator

| Operant type | Beschreibung                   |
| ------------ | ------------------------------ |
| int          | Get JSON array element as text |
| text         | Get JSON object field as text  |




Filtern mit `->>` nach **key** mit Rückgabe als Text(ohne Anführungszeichen):

`SELECT
id,
attributes -> 'grades' ->> 0 AS firstGrade
FROM students;`{{execute}}

`SELECT
id,
attributes ->> 'username' AS username
FROM students;`{{execute}}
