SELECT s.Name
FROM Students s JOIN Friends f ON s.ID = f.ID
JOIN Packages p ON s.ID = p.ID
JOIN Packages pf ON f.Friend_ID = pf.ID
WHERE p.Salary < pf.Salary
ORDER BY pf.Salary