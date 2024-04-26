#If NULL values are present, update them with zeros for all columns.

UPDATE coronadb.coronadata
SET Confirmed = COALESCE(Confirmed, 0),
    Deaths = COALESCE(Deaths, 0),
    Recovered = COALESCE(Recovered, 0)
WHERE Confirmed IS NULL
    AND Deaths IS NULL
    AND Recovered IS NULL;