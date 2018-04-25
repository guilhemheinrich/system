#! /bin/bash

docker run -it \
-p 5433:5432 \
-e POSTGRES_PASSWORD=issacc666 \
-e POSTGRES_USER=issac \
-v issac_psql:/var/lib/postgresql/data \
-d \
--rm \
postgres:10 

## connectr to it with : psql -h localhost -p 5433 -U issac administration
## do it in two time, firste create database administration, then connect to it and insert 
## psql -h localhost -p 5433 -U issac administration < database-setup.sql