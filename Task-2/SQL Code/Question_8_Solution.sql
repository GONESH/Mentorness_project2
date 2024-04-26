#Find minimum values for confirmed, deaths, recovered per year
SELECT 
    YEAR(Date) AS Year,
    MIN(Confirmed) AS MinConfirmed,
    MIN(Deaths) AS MinDeaths,
    MIN(Recovered) AS MinRecovered
FROM 
    coronadb.coronadata
GROUP BY Year
ORDER BY Year;