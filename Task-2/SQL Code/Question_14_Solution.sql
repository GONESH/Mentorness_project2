/*Find Country having highest number of the Confirmed case*/
# Finding By Country/Region.
SELECT 
    `Country/Region`,
    SUM(`Confirmed`) AS TotalConfirmed
FROM 
    coronadb.coronadata
GROUP BY 
    `Country/Region`
ORDER BY 
    TotalConfirmed DESC
LIMIT 1;