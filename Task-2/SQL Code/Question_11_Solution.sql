/*Check how corona virus spread out with respect to confirmed case
--      (Eg.: total confirmed cases, their average, variance & STDEV )*/
SELECT 
    SUM(Confirmed) AS TotalConfirmed,
    AVG(Confirmed) AS AvgConfirmed,
    VARIANCE(confirmed) AS VarianceConfirmed,
    STDDEV(confirmed) AS StdevConfirmed
FROM 
    coronadb.coronadata;