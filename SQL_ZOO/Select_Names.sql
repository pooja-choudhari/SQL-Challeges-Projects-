1.Find the country that start with Y
SELECT name
FROM world
WHERE name LIKE 'Y%';

2.Find the countries that end with y
SELECT name
FROM world
WHERE name LIKE '%Y';
