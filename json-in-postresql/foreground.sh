#/bin/bash

docker run -d --name=postgres-katacoda -p 5432:5432 -e POSTGRES_PASSWORD=password postgres