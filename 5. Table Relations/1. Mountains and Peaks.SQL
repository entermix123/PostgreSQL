--OPTION 1
CREATE TABLE mountains(
	id INT GENERATED ALWAYS AS IDENTITY UNIQUE,
	name VARCHAR(50) NOT NULL
	);
CREATE TABLE peaks(
	id INT GENERATED ALWAYS AS IDENTITY UNIQUE,
	name VARCHAR(50) NOT NULL,
	mountain_id INT,
	CONSTRAINT fk_peaks_mountains
		FOREIGN KEY (mountain_id)
			REFERENCES mountains(id)
	);

--OPTION 2
CREATE TABLE mountains(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
	);
	
CREATE TABLE peaks(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	mountain_id INT,
	CONSTRAINT fk_peaks_mountains
		FOREIGN KEY (mountain_id)
			REFERENCES mountains(id)
	);

--OPTION 3 --> CREATE CONNECTION IN EXISTING TABLES
CREATE TABLE mountains(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
	);
	
CREATE TABLE peaks(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	mountain_id INT
	);
	
ALTER TABLE peaks
ADD CONSTRAINT fk_peaks_mountains
	FOREIGN KEY (mountain_id)
		REFERENCES mountains(id);