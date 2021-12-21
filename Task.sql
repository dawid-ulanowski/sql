/***** ZADANIE *****/

/*
1) Korzystaj¹c z tabeli [HumanResources].[Employee] stwórz zapytanie, które:
	a) Zwróci kolumny BusinessEntityID, LoginID, HireDate
	b) Zwróci pozycje dla kadry zarz¹dzaj¹cej (zacznij szukaæ od: zawiera s³owo Officer)

2) Korzystaj¹c z tabeli [HumanResources].[Employee] stwórz zapytanie, które:
	a) Zwróci kolumny BusinessEntityID, LoginID, JobTitle, HireDate
	b) Zwróci loginy osób zatrudnionych przed 2011, które s¹ zwi¹zane z produkcj¹ (s³owo Production w nazwie stanowiska)
	i by³y na zwolnieniu lekarskim 50 godzin (SickLeaveHours)

3) Korzystaj¹c z tabeli [HumanResources].[JobCandidateID] stwórz zapytanie, które:
	a) Zwróci zatrudnione w firmie osoby (czyli te, które maj¹ swój BusinessEntityID)
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
