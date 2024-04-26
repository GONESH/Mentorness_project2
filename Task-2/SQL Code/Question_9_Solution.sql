#Find maximumn values for confirmed, deaths, recovered per year
SELECT 
    YEAR(Date) AS Year,
    MAX(Confirmed) AS MaxConfirmed,
    MAX(Deaths) AS MaxDeaths,
    MAX(Recovered) AS MaxRecovered
FROM 
    coronadb.coronadata
GROUP BY Year
ORDER BY Year;