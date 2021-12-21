/***** ZADANIE *****/

/*
1) Korzystaj�c z tabeli [Sales].[SalesOrderDetail]
stw�rz zapytanie, kt�rego rezultatem b�d� kolumny, dzi�ki kt�rym
poznasz SalesOrderID, LineTotal, �redni� z LineTotal 
wszystkich zam�wie� (czyli 1 warto�� dla ca�ej tabeli), 
r�nic� mi�dzy ca�kowit� �redni� LineTotal 
i LineTotal poszczeg�lnych zam�wie�.

Podpowied�: odejmowanie dzia�a jak w matematyce -> kolumna minus kolumna.

2) Korzystaj�c z tabeli [HumanResources].[Employee]
stw�rz zapytanie, w kt�rym zwr�cisz BusinessEntityID i VacationHours os�b,
kt�re maj� VacationHours wi�cej ni� �rednia wszystkich pracownik�w.
*/

/* ZADANIE 2 */

SELECT BusinessEntityID,
		VacationHours
FROM HumanResources.Employee
WHERE VacationHours > (SELECT AVG(VacationHours)
						FROM HumanResources.Employee)
ORDER BY VacationHours






/* ZADANIE 1
SELECT SalesOrderId,
		LineTotal,
		(SELECT AVG(LineTotal)
		FROM Sales.SalesOrderDetail) AvgLineTotal,
		LineTotal - (SELECT AVG(LineTotal) 
		FROM Sales.SalesOrderDetail) DIFFvsAvg 
FROM Sales.SalesOrderDetail
*/