-- World Populations SQL Practice
-- This is a Codecademy project that contains a series of open-ended requirements which describe the project you’ll be building.

-- Q1. What years are covered by the dataset?

SELECT DISTINCT year from population_years;

-- Q2. What is the largest population size for Gabon in this dataset?

SELECT MAX (population)
FROM population_years
WHERE country = 'Gabon';

-- Q3. What were the 10 lowest population countries in 2005?
SELECT country, ROUND (population, 3) as 'population'
FROM population_years
WHERE year = 2005
GROUP BY country
ORDER BY population ASC
LIMIT 10;

-- Q.4 What are all the distinct countries with a population of over 100 million in the year 2010?

SELECT DISTINCT country, population
FROM population_years
WHERE population > 100 and year = 2010;

-- Q.5 How many countries in this dataset have the word “Islands” in their name?

SELECT COUNT (DISTINCT country)
FROM population_years
WHERE country LIKE '%Islands%';

-- Q.6 What is the difference in population between 2000 and 2010 in Indonesia?

--Note: it’s okay to figure out the difference by hand after pulling the correct data.
SELECT MAX (population), MIN (population)
FROM population_years
WHERE country = 'Indonesia' and year BETWEEN 2000 and 2010;



