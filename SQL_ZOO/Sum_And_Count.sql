1. Show the total population of the world.
SELECT SUM(population)
FROM world;

2.List of continents
SELECT DISTINCT(continent)
FROM world;

3. GDP of Africa
SELECt SUM(gdp)
FROM world
WHERE continent = 'Africa';

4.How many countries have an area of at least 1000000
SELECT COUNT(name)
FROM world
WHERE area >= 1000000;
