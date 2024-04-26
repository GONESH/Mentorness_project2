# Number of month present in dataset

SELECT MONTH(Date) AS Month, COUNT(*) AS NumOfMonths FROM coronadb.coronadata GROUP BY Month;