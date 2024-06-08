--Ограничить результирующий набор, полученный в п.8.
SELECT "BusinessEntityID"
FROM "Sales"."Store"
WHERE "BusinessEntityID" NOT IN (SELECT "CustomerID" FROM "Sales"."Customer")
LIMIT 100;
