#Find most frequent value for confirmed, deaths, recovered each month
SELECT 
    MONTH(Date) AS Month,
    YEAR(Date) AS Year,
    SUBSTRING_INDEX(GROUP_CONCAT(Confirmed ORDER BY confirmed DESC), ',', 1) AS MostFrequentConfirmed,
    SUBSTRING_INDEX(GROUP_CONCAT(Deaths ORDER BY deaths DESC), ',', 1) AS MostFrequentDeaths,
    SUBSTRING_INDEX(GROUP_CONCAT(Recovered ORDER BY recovered DESC), ',', 1) AS MostFrequentRecovered
FROM 
    coronadb.coronadata
GROUP BY 
    Month, Year
ORDER BY 
    Year, Month;