/***** ZADANIE *****/

/*
Korzystaj�c z tabeli [HumanResources].[vEmployee] (w sekcji Views) stw�rz zapytanie:
1) W pierwszej kolumnie po�acz imi� i nazwisko
2) W drugiej po��cz adres w jedn� kolumn� - AdresLine1, 2 i City
3) Nazwij odpowiednio kolumny
4) Upewnij si�, �e nie ma duplikat�w
5) Poka� pierwsze 100 wynik�w
*/


SELECT TOP(100) CONCAT ([FirstName],' ',[LastName]) AS FullName,
	 REPLACE(CONCAT([AddressLine1],' ',[AddressLine2],' ',[City]),'  ',' ') AS FullAddress
FROM [HumanResources].[vEmployee]