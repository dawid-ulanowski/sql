/***** ZADANIE *****/

/*
1) Korzystaj�c z tabeli [HumanResources].[Employee] stw�rz zapytanie, kt�re:
	a) Zwr�ci kolumny BusinessEntityID, LoginID, HireDate
	b) Zwr�ci pozycje dla kadry zarz�dzaj�cej (zacznij szuka� od: zawiera s�owo Officer)

2) Korzystaj�c z tabeli [HumanResources].[Employee] stw�rz zapytanie, kt�re:
	a) Zwr�ci kolumny BusinessEntityID, LoginID, JobTitle, HireDate
	b) Zwr�ci loginy os�b zatrudnionych przed 2011, kt�re s� zwi�zane z produkcj� (s�owo Production w nazwie stanowiska)
	i by�y na zwolnieniu lekarskim 50 godzin (SickLeaveHours)

3) Korzystaj�c z tabeli [HumanResources].[JobCandidateID] stw�rz zapytanie, kt�re:
	a) Zwr�ci zatrudnione w firmie osoby (czyli te, kt�re maj� sw�j BusinessEntityID)
*/

/* Zadanie 1) 
SELECT BusinessEntityID, LoginID, HireDate, JobTitle
FROM HumanResources.Employee
WHERE [JobTitle] LIKE 'Chief %officer'
*/

/* Zadanie 2) 
SELECT BusinessEntityID, LoginID, JobTitle, HireDate
FROM HumanResources.Employee
WHERE HireDate <= '2010-12-31' AND JobTitle LIKE '%Production%' AND SickLeaveHours < 50
*/

/* Zadanie 3) 
SELECT *
FROM HumanResources.JobCandidate
WHERE BusinessEntityID IS NOT NULL
*/
