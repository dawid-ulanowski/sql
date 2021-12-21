/***** ZADANIE *****/

/*
Korzystaj�c z tabeli [Production].[Prodcut] i [Sales].[SalesOrderDetail]
stw�rz zapytanie, kt�rego rezultatem b�d� kolumny, dzi�ki kt�rym dowiesz si� 
jak nazywaj� si� poszczeg�lny produkty w li�cie zam�wie� i z jakim numerem
dostawy zosta�y wys�ane (CarrierTrackingNumber).
Posortuj dane po dacie modyfikacji tabeli SalesOrderDetail.
Nie zapomnij skorzysta� z alias�w.
*/

SELECT so.SalesOrderID, so.SalesOrderDetailID, so.CarrierTrackingNumber, so.ProductID, pp.Name
FROM Sales.SalesOrderDetail so
LEFT JOIN Production.Product pp ON so.ProductID = pp.ProductID
ORDER BY so.ModifiedDate