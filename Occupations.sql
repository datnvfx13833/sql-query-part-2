SELECT Doctor, Professor, Singer, Actor
FROM
    (SELECT 
        ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) RN, Name, Occupation 
     FROM OCCUPATIONS) AS tblTemp
PIVOT 
(MAX(Name) FOR Occupation IN (Doctor, Professor, Singer, Actor)) AS tblPivot