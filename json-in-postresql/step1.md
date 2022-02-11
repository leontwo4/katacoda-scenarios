## JSON

Java Script Object Notation(JSON) wurde von Douglas Crockford entwickelt und dient hauptsächlich als Datenaustauschformat und als Speicherformat in Datenbanken(z.B. MongoDB).
Dazu werden Namen-Wert-Paare(name/value pairs) genutzt. 

JSON gehört zu den semi-strukturierten Datenformaten [^1] und kann zur Datenmodellierung im Data Lake bei der Nutzung
von Schema-on-read genutzt werden. [^2]

> JSON – schemaless future for Database design?[^3]

Durch die Nutzung von schemalosen Datenbankdesigns, wird angestrebt, die bei traditionellen relationalen Datenbanken notwendige Formatierung zu umgehen. Dadurch könenn alle Daten unabhängig von deren Formatierung in einer Datenbank gespeichert werden. 
Dabei ist die Frage zu stellen, ob Datenbanken wirklich schemalos verwendet werden können. Auf irgendeiner Ebene ist immer ein Schema[^4]

### Beispiel für JSON-Objekt
```javascript
{
  "matriculation_number": "2421766",
  "username": "ljansen",
  "course": "wwi2019f"
}
```

## JSON und JSONB in PostgreSQL [^6]

Für JSON gibt es in PostgreSQL zwei Daten Typen: JSON und JSONB. Der Hauptunterschied zwischen diesen liegt in der Effizienz. Der Typ **json** speichert eine exakte Kopie des Eingabetextes, welchen Funktionen bei jeder Ausführung 
neu parsen müssen. Mit dem Typ **jsonb** werden die Daten im Binärformat gespeichert, wodurch dieser in der Verarbeitung deutlich schneller ist.

In diesem Szenario wird für JSON-Daten der Datentyp **jsonb** in PostgreSQL verwendet.


[^1]: Vorlesungsskript DM04-DatenModellierung; S.101
[^2]: Vorlesungsskript DM04-DatenModellierung; S.109
[^3]: Vorlesungsskript DM04-DatenModellierung; S.102
[^5]: [Julio, R: Is Schemaless Databases Really Exists? 16.01.2017](https://link](https://rezhajul.io/is-schemaless-database-really-exists/))
[^6]: [PostgreSQL Dokumentation-JSON Types ]([https://link](https://www.postgresql.org/docs/current/datatype-json.html)) 