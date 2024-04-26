#The total number of case of confirmed, deaths, recovered each month
    SELECT 
    MONTH(Date) AS Month,
    YEAR(Date) AS Year,
    SUM(Confirmed) AS TotalConfirmed,
    SUM(Deaths) AS TotalDeaths,
    SUM(Recovered) AS TotalRecovered
FROM 
    coronadb.coronadata
GROUP BY Month, Year
ORDER BY Year, Month;