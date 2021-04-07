/*SELECT Quiz*/

SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000

Albania	3200000
Algeria	32900000

SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l'

Italy	5
Malta	5
Spain	5


Andorra	936

SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000.

 SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia')

 /*BBC QUIZ*/

 SELECT name
  FROM world
 WHERE name LIKE 'U%'

 SELECT population
  FROM world
 WHERE name = 'United Kingdom'

 'name' should be name


Nauru	990

SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia')

 SELECT name FROM world
 WHERE name IN ('Cuba', 'Togo')


Brazil
Colombia

 /*Nobel Quiz*/
 SELECT winner FROM nobel
 WHERE winner LIKE 'C%' AND winner LIKE '%n'

 SELECT COUNT(subject) FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN 1950 and 1960

   SELECT COUNT(DISTINCT yr) FROM nobel
 WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine')


Medicine	Sir John Eccles
Medicine	Sir Frank Macfarlane Burnet

SELECT yr FROM nobel
 WHERE yr NOT IN(SELECT yr 
                   FROM nobel
                 WHERE subject IN ('Chemistry','Physics'))

SELECT DISTINCT yr
  FROM nobel
 WHERE subject='Medicine' 
   AND yr NOT IN(SELECT yr FROM nobel 
                  WHERE subject='Literature')
   AND yr NOT IN (SELECT yr FROM nobel
                   WHERE subject='Peace')

Chemistry	1
Literature	1
Medicine	2
Peace	1
Physics	1
 /*Nested SELECT Quiz*/
 SELECT region, name, population FROM bbc x WHERE population <= ALL (SELECT population FROM bbc y WHERE y.region=x.region AND population>0)

 SELECT name,region,population FROM bbc x WHERE 50000 < ALL (SELECT population FROM bbc y WHERE x.region=y.region AND y.population>0)

 SELECT name, region FROM bbc x
 WHERE population < ALL (SELECT population/3 FROM bbc y WHERE y.region = x.region AND y.name != x.name)

SELECT name FROM bbc
 WHERE gdp > (SELECT MAX(gdp) FROM bbc WHERE region = 'Africa')

France
Germany
Russia
Turkey

SELECT name FROM bbc
 WHERE population < (SELECT population FROM bbc WHERE name='Russia')
   AND population > (SELECT population FROM bbc WHERE name='Denmark')

Bangladesh
India
Pakistan
 /**/
 
 /**/
 /**/
 
