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
