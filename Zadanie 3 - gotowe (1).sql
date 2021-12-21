/***** ZADANIE *****/

/*
Korzystaj¹c z tabeli [HumanResources].[vEmployee] (w sekcji Views) stwórz zapytanie:
1) W pierwszej kolumnie po³acz imiê i nazwisko
2) W drugiej po³¹cz adres w jedn¹ kolumnê - AdresLine1, 2 i City
3) Nazwij odpowiednio kolumny
4) Upewnij siê, ¿e nie ma duplikatów
5) Poka¿ pierwsze 100 wyników
*/


SELECT TOP(100) CONCAT ([FirstName],' ',[LastName]) AS FullName,
	 REPLACE(CONCAT([AddressLine1],' ',[AddressLine2],' ',[City]),'  ',' ') AS FullAddress
FROM [HumanResources].[vEmployee]