CREATE TABLE employees(
	id serial PRIMARY KEY Not NULL,
	first_name VARCHAR(30),
	last_name VARCHAR(50),
	hiring_date DATE Default('2023-01-01'),
	salary NUMERIC (10,2),
	devices_number INTEGER
	);

CREATE TABLE departments(
	id serial PRIMARY KEY Not NULL,
	"name" VARCHAR(50),
	code CHAR(3),
	description TEXT
	);
	
CREATE TABLE issues(
	id serial PRIMARY KEY UNIQUE,
	description VARCHAR(150),
	date DATE,
	start TIMESTAMP WITHOUT TIME ZONE
	);