# PostgreSQL JSON Funktionen

Erstellen und füllen einer Tabelle zur Verwendung der Funktionen:
```
CREATE TABLE teachers (
    id INT,
    classes JSONB
);```{{execute}}

```
INSERT INTO teachers (id, classes)
VALUES(1, '{
  "course": ["data-science","maths"]}');```{{execute}}
## jsonb_each()

Erweiterung des äußersten JSON-Objektes in ein set von Key-Value-Paaren:

```SELECT id, jsonb_each (classes)
FROM teachers;```{{execute}}

## jsonb_object_keys()

Rückgabe der Schlüssel im JSON-Objekt

```SELECT id, jsonb_object_keys (classes)
FROM teachers;```{{execute}}

```SELECT id, jsonb_object_keys (attributes)
FROM students;```{{execute}}

## array_to_json()

Konvertierung eines SQL-Arrays in ein JSON-Array:

```
SELECT array_to_json('{{"very good","sufficient"},{"good","failed"}}'::text[]);```{{execute}}
