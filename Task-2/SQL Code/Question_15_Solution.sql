/*Find Country having lowest number of the death case*/
SELECT 
    `Country/Region`,
    MIN(`Deaths`) AS LowestDeaths
FROM 
    coronadb.coronadata
GROUP BY 
    `Country/Region`
ORDER BY 
    LowestDeaths ASC
LIMIT 5;