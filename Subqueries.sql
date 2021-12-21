/***** ZADANIE *****/

/*
1) Korzystaj¹c z tabeli [Sales].[SalesOrderDetail]
stwórz zapytanie, którego rezultatem bêd¹ kolumny, dziêki którym
poznasz SalesOrderID, LineTotal, œredni¹ z LineTotal 
wszystkich zamówieñ (czyli 1 wartoœæ dla ca³ej tabeli), 
ró¿nicê miêdzy ca³kowit¹ œredni¹ LineTotal 
i LineTotal poszczególnych zamówieñ.

PodpowiedŸ: odejmowanie dzia³a jak w matematyce -> kolumna minus kolumna.

2) Korzystaj¹c z tabeli [HumanResources].[Employee]
stwórz zapytanie, w którym zwrócisz BusinessEntityID i VacationHours osób,
które maj¹ VacationHours wiêcej ni¿ œrednia wszystkich pracowników.
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