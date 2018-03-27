CREATE DATABASE administration;

CREATE EXTENSION chkpass;

CREATE TABLE users
(
    id SERIAL PRIMARY KEY NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    password VARCHAR NOT NULL,
    email VARCHAR(255),
    auth_key VARCHAR(255), 
    access_token VARCHAR(255),
    is_admin boolean DEFAULT false
);

INSERT INTO users (first_name, last_name, password, email, is_admin) 
VALUES ('guilhem', 'heinrich', 'pic3.14', 'guilhem.heinrich@inra.fr', true)
;
