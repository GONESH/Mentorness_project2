/* Check how corona virus spread out with respect to recovered case
--      (Eg.: total confirmed cases, their average, variance & STDEV )*/
SELECT 
    SUM(Recovered) AS TotalRecovered,
    AVG(Recovered) AS AvgRecovered,
    VARIANCE(Recovered) AS VarianceRecovered,
    STDDEV(Recovered) AS StdevRecovered
FROM 
    coronadb.coronadata;