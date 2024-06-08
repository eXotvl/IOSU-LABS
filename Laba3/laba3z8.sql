--Показать список ID, которые содержатся в таблице Sales.Store
--(поле BusinessEntityID), но не содержатся в таблице
--Sales.Customer (поле CustomerID).
SELECT "BusinessEntityID"
FROM "Sales"."Store"
WHERE "BusinessEntityID" NOT IN (SELECT "CustomerID" FROM "Sales"."Customer");
