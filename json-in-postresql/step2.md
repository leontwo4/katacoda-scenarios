Starten der PotgreSQL Kommandozeile:
```
docker exec -it postgres-katacoda psql -U postgres
```{{execute}}

# JSON Feld in PostgreSQL einfügen

Mit folgendem Befehl wird eine Tabelle *students* erstellt.

```
CREATE TABLE students (
id INT,
attributes JSONB
);
```{{execute}}

Neben einer **id** hat jede students-Tabelle eine Attribut-Spalte mit dem Datentyp JSONB.

##  Daten zu JSON Feld hinzufügen

Mit der Ausführung des folgenden INSERT-Statements werden vier Studenten-Rows in die tabelle `students` eingefügt.

```
INSERT INTO students (id, attributes)
VALUES (1, 
'{
  "matriculation_number": "2421766",
  "username": "ljansen",
  "course": [{"name" : "wwi2019f", "year": 2019}],
  "subjects": [{"topic": "data-management", "presenter": "buckenhofer"}, {"topic": "economics", "presenter": "economic-guy"}],
  "grades" : ["very good", "sufficient"]
}'), 
(2, 
'{
  "matriculation_number": "3532877",
  "username": "student2",
  "course": [{"name": "wwi2020f", "year": 2020}],
  "subjects": [{"topic": "data-management", "presenter": "buckenhofer"}, {"topic": "economics", "presenter": "economic-guy"}],
  "grades" : ["good", "sufficient"]

}'), 
(3, 
'{
  "matriculation_number": "4643988",
  "username": "student3",
  "course": [{"name": "wwi2019i", "year": 2019}],
  "subjects": [{"topic": "international-business", "presenter": "international-guy"}, {"topic": "economics", "presenter": "economic-guy"}],
  "grades" : ["very good", "sufficient"]
}'), 
(4, 
'{
  "matriculation_number": "1428459",
  "username": "bstudent4",
  "course": [{"name": "wwi2019b", "year": 2019}],
  "subjects": [{"topic": "research", "presenter": "research-guy"}, {"topic": "economics", "presenter": "economic-guy"}],
  "grades" : ["very good", "good"]
}')
;
```{{execute}}