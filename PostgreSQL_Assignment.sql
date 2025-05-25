-- Active: 1747663712588@@127.0.0.1@5432@conservation_db
CREATE DATABASE conservation_db;

CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL
);

CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(50) UNIQUE,
    scientific_name VARCHAR(50) UNIQUE,
    discovery_date DATE NOT NULL,
    conservation_status VARCHAR(25) NOT NULL
);

CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT REFERENCES rangers(ranger_id),
    species_id INT REFERENCES species(species_id),
    sighting_time DATE NOT NULL,
    location VARCHAR(50) NOT NULL,
    notes VARCHAR(50)
);
DROP TABLE sightings;
DROP TABLE species;
INSERT INTO rangers (name, region) VALUES
    ('Alice Green','Northern Hils'), 
    ('Bob White','River Delta'),
    ('Carol King','Mountain Range')

INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status) VALUES
    ('Snow Leopard','Panthera uncia','1775-01-01','Endangered'), 
    ('Bengal Tiger', 'Panthera tigris', '1758-01-01', 'Endangered'),
    ('Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
    ('Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered')

INSERT INTO sightings (ranger_id, species_id ,sighting_time,location,notes) VALUES 
    (1, 1, '2024-05-10 07:45:00', 'Peak Ridge', 'Camera trap image captured'),
    (2, 2, '2024-05-12 16:20:00', 'Bankwood Area', 'Juvenile seen'),
    (3, 3, '2024-05-15 09:10:00',  'Bamboo Grove East', 'Feeding observed  '),
    (2, 1,  '2024-05-18 18:30:00', 'Snowfall Pass', NULL)

SELECT * FROM rangers;
SELECT * FROM species;
SELECT * FROM sightings;


-- problem 1
INSERT INTO rangers (name, region) VALUES ('Derek Fox', 'Coastal Plains');


-- problem 2
SELECT common_name, count(*) FROM species
    GROUP BY common_name;


-- Problem 3
SELECT * FROM sightings
    WHERE location ILIKE '%pass%';