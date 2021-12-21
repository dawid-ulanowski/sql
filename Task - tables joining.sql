/***** ZADANIE *****/

/*
Korzystaj¹c z tabeli [Production].[Prodcut] i [Sales].[SalesOrderDetail]
stwórz zapytanie, którego rezultatem bêd¹ kolumny, dziêki którym dowiesz siê 
jak nazywaj¹ siê poszczególny produkty w liœcie zamówieñ i z jakim numerem
dostawy zosta³y wys³ane (CarrierTrackingNumber).
Posortuj dane po dacie modyfikacji tabeli SalesOrderDetail.
Nie zapomnij skorzystaæ z aliasów.
*/

SELECT so.SalesOrderID, so.SalesOrderDetailID, so.CarrierTrackingNumber, so.ProductID, pp.Name
FROM Sales.SalesOrderDetail so
LEFT JOIN Production.Product pp ON so.ProductID = pp.ProductID
ORDER BY so.ModifiedDate