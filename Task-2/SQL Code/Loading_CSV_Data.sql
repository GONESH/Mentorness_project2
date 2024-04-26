CREATE DATABASE IF NOT EXISTS Coronadb;

USE Coronadb;

CREATE TABLE CoronaTb
(
Province TEXT,
Country_Region TEXT,
Latitude FLOAT,
Longitude FLOAT,
Date DATE,
Confirmed INT,
Deaths INT,
Recovered INT
);
SELECT * FROM CoronaTb;

LOAD DATA INFILE 'C:/CoronaDataset.csv' INTO TABLE CoronaTb
FIELDS TERMINATED BY '\t'
IGNORE 1 LINES;