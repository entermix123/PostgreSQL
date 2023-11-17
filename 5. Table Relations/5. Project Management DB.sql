--????
CREATE TABLE clients(
	id SERIAL PRIMARY KEY,
	name VARCHAR(10)
	);

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    project_lead_id INT UNIQUE ,
    CONSTRAINT client_id FOREIGN KEY(id)
    REFERENCES clients(id)
    );

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    CONSTRAINT project_id FOREIGN KEY(id)
    REFERENCES projects(id),
    CONSTRAINT id FOREIGN KEY(id)
    REFERENCES projects(project_lead_id)
    );