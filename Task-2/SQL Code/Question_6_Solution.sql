 #Find monthly average for confirmed, deaths, recovered
 SELECT 
    MONTH(Date) AS Month,
    YEAR(Date) AS Year,
    AVG(Confirmed) AS AvgConfirmed,
    AVG(Deaths) AS AvgDeaths,
    AVG(Recovered) AS AvgRecovered
FROM 
    coronadb.coronadata
GROUP BY 
    Month, Year
ORDER BY 
    Year, Month;