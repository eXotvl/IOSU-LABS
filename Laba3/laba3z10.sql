--Пропустить 15 строк из результирующего набора, полученного в п.9.
SELECT "BusinessEntityID"
FROM "Sales"."Store"
WHERE "BusinessEntityID" NOT IN (SELECT "CustomerID" FROM "Sales"."Customer")
LIMIT 100 OFFSET 15;
