SELECT Name + '('+ LEFT(Occupation,1) +')'
FROM OCCUPATIONS
ORDER BY Name
SELECT 'There are a total of ' + STR(COUNT(Occupation)) + ' ' + LOWER(Occupation) + 's.'
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation), Occupation