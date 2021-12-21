/***** ZADANIE *****/

/*
Korzystaj¹c z tabeli [Production].[WorkOrder] stwórz zapytanie, które:
	a) podsumuje OrderQty i StockedQty dla ProductID
	b) przesortuje je od najwy¿szej po OrderQty
	c) policz ile WorkOrders (WorkOrderID) zosta³o z³o¿one per ProductID
*/

SELECT ProductID,
COUNT(WorkOrderID) AS NbWorkOrders,
SUM(OrderQty) AS TotalOrderQty,
SUM(StockedQty) AS TotalStockedQty
FROM Production.WorkOrder
GROUP BY ProductID
ORDER BY SUM(OrderQty) DESC

SELECT *
FROM Production.WorkOrder
WHERE ProductID = 757