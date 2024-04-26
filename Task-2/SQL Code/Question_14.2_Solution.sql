/*Find Country having highest number of the Confirmed case*/
SELECT 
    Province,
    SUM(confirmed) AS TotalConfirmed
FROM 
    coronadb.coronadata
GROUP BY 
    Province
ORDER BY 
    TotalConfirmed DESC
LIMIT 5;