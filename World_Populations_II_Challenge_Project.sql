-- How many entries in the database are from Africa? 
SELECT COUNT (continent)
FROM  countries
WHERE continent LIKE '%Africa%';

---- Answer : 56 


-- What was the total population of Oceania in 2005?
SELECT SUM(population) 
FROM  countries
JOIN population_years
ON countries.id = population_years. country_id
WHERE countries.continent = 'Oceania' and population_years.year = 2005;

---- Answer : 32.66417


-- What is the average population of countries in South America in 2003?
SELECT AVG (population) 
FROM  countries
JOIN population_years
ON countries.id = population_years. country_id
WHERE countries.continent = 'South America' and population_years.year = 2003;

---Answer: 25.8906514285714


-- What country had the smallest population in 2007?
SELECT name, MIN (population)
FROM  countries
JOIN population_years
ON countries.id = population_years. country_id
WHERE population_years.year = 2007;

---Answer: Niue, smallest population 0.00216



-- What is the average population of Poland during the time period covered by this dataset?
SELECT AVG(population), name
FROM  countries
JOIN population_years
ON countries.id = population_years. country_id
WHERE countries.name = "Poland";

---Answer: 38.5606790909091


-- How many countries have the word "The" in their name?
ELECT COUNT (name)
FROM  countries
WHERE name LIKE '%The%';

---Answer: 4 countries


-- What was the total population of each continent in 2010?
SELECT continent, SUM (population)
FROM  countries
JOIN population_years
ON countries.id = population_years. country_id
WHERE population_years.year = 2010
GROUP BY continent;

--- Answer: 
--Africa	1015.47846
--Asia	4133.09148
--Europe	723.06044
--North America	539.79456
--Oceania	34.95696


