# Write a code to check NULL values
SELECT * FROM coronadb.coronadata
WHERE `Confirmed` IS NULL
OR `Deaths` IS NULL
OR `Recovered` IS NULL
OR `Longitude` IS NULL
OR `Latitude` is NULL
OR `Country/Region` IS NULL
OR `Province` is NULL;