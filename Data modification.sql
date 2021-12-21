/***** ZADANIE *****/

/*
1) Dodaj do tabeli Production.WorkOrder nowy wiersz.
Wybierz dowolne dane.
Poka¿ tylko nowy wiersz zapytaniem.

PodpowiedŸ: przyda siê limitowanie zapytania przez TOP.

2) Zmieñ ScrappedQty na 10.

3) Usuñ wczeœniej dodany wiersz.
*/

/*
INSERT INTO Production.WorkOrder (ProductID, OrderQty, ScrappedQty, 
StartDate, EndDate, DueDate, ScrapReasonID, ModifiedDate) VALUES(
722,
150,
20,
'2012-01-01',
'2020-01-01',
'2020-01-02',
7,
'2021-01-01')


UPDATE Production.WorkOrder
SET ScrappedQty = 10
WHERE WorkOrderID = 72598

SELECT TOP(1) *
FROM Production.WorkOrder
ORDER BY WorkOrderID DESC


DELETE FROM Production.WorkOrder
WHERE WorkOrderID > 72591

SELECT *
FROM Production.WorkOrder
ORDER BY WorkOrderID DESC
*/