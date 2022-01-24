-- Databricks notebook source
describe avo_clean

-- COMMAND ----------

SELECT year, AVG(AveragePrice)
FROM avo_clean
GROUP BY year
ORDER BY year ASC

-- COMMAND ----------

SELECT year, SUM(TotalVolume) AS TotalVol, SUM(plu4046) AS plu4046, SUM(plu4225) AS plu4225, SUM(plu4770) AS plu4770
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains')
GROUP BY year
ORDER BY year ASC

-- COMMAND ----------

SELECT year, SUM(plu4046) AS plu4046, SUM(plu4225) AS plu4225, SUM(plu4770) AS plu4770
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains')
GROUP BY year
ORDER BY year ASC

-- COMMAND ----------

SELECT region, SUM(TotalVolume) AS TotalVol
FROM avo_clean
WHERE region IN ('West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains')
GROUP BY region
ORDER BY TotalVol desc

-- COMMAND ----------

SELECT region, SUM(TotalVolume) AS TotalVol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains')
GROUP BY region
ORDER BY TotalVol desc
LIMIT 10

-- COMMAND ----------

SELECT year, SUM(TotalVolume) AS TotalVol, SUM(plu4046) AS plu4046, SUM(plu4225) AS plu4225, SUM(plu4770) AS plu4770
FROM avo_clean
WHERE region = "LosAngeles"
GROUP BY year
ORDER BY year ASC

-- COMMAND ----------

SELECT SUM(TotalVolume) AS TotalVol, AVG(AveragePrice) AS AvgPrice, year
FROM avo_clean
GROUP BY year
ORDER BY year asc

-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2015'
GROUP BY region
ORDER BY max_vol desc
LIMIT 10

-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2016'
GROUP BY region
ORDER BY max_vol desc
LIMIT 10

-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2017'
GROUP BY region
ORDER BY max_vol desc
LIMIT 10

-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2018'
GROUP BY region
ORDER BY max_vol desc
LIMIT 10

-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2019'
GROUP BY region
ORDER BY max_vol desc
LIMIT 10

-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2020'
GROUP BY region
ORDER BY max_vol desc
LIMIT 10


-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2021'
GROUP BY region
ORDER BY max_vol desc
LIMIT 10

-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2015'
GROUP BY region
ORDER BY max_vol asc
LIMIT 10

-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2016'
GROUP BY region
ORDER BY max_vol asc
LIMIT 10

-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2017'
GROUP BY region
ORDER BY max_vol asc
LIMIT 10

-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2018'
GROUP BY region
ORDER BY max_vol asc
LIMIT 10

-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2019'
GROUP BY region
ORDER BY max_vol asc
LIMIT 10

-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2020'
GROUP BY region
ORDER BY max_vol asc
LIMIT 10

-- COMMAND ----------

SELECT region, MAX(TotalVolume) AS max_vol
FROM avo_clean
WHERE region NOT IN ('TotalUS', 'West', 'California', 'SouthCentral', 'Northeast', 'Southeast', 'GreatLakes', 'Midsouth', 'Plains') AND year = '2021'
GROUP BY region
ORDER BY max_vol asc
LIMIT 10

-- COMMAND ----------

SELECT year, AVG(AveragePrice), SUM(TotalVolume)
FROM avo_clean
WHERE region = 'LosAngeles'
GROUP BY year
ORDER BY year

-- COMMAND ----------


