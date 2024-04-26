/*Check how corona virus spread out with respect to death case per month
--      (Eg.: total confirmed cases, their average, variance & STDEV )*/

SELECT 
    MONTH(Date) AS Month,
    SUM(Deaths) AS TotalDeaths,
    AVG(Deaths) AS AvgDeaths,
    VARIANCE(Deaths) AS VarianceDeaths,
    STDDEV(Deaths) AS StdevDeaths
FROM 
    coronadb.coronadata
GROUP BY Month
ORDER BY Month;