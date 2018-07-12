#! /bin/bash

docker run -it \
-p 5433:5432 \
-e POSTGRES_PASSWORD=issacc666 \
-e POSTGRES_USER=issac \
-v issac_psql:/var/lib/postgresql/data \
-d \
--rm \
postgres:10 

## for the first time
## psql -h localhost -p 5433 -U issac < database-setup.sql