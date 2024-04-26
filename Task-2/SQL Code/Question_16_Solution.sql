/*Find top 5 countries having highest recovered case*/
SELECT 
    `Country/Region`,
    SUM(`Recovered`) AS TotalRecovered
FROM
coronadb.coronadata
GROUP BY
	`Country/Region`
ORDER BY
	TotalRecovered DESC
LIMIT 5;