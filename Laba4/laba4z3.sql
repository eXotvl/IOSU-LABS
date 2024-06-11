--Посчитать сумму StandartPrice шести уникальных BusinessEntityID с самым большим значением.
--(“Purchasing”.”ProductVendor”).
SELECT SUM("StandardPrice") AS TotalPrice
FROM (
    SELECT DISTINCT ON ("BusinessEntityID") "StandardPrice"
    FROM "Purchasing"."ProductVendor"
    ORDER BY "BusinessEntityID", "StandardPrice" DESC
    LIMIT 6
);
