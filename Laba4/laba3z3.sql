SELECT SUM("StandardPrice") AS TotalPrice
FROM (
    SELECT DISTINCT ON ("BusinessEntityID") "StandardPrice"
    FROM "Purchasing"."ProductVendor"
    ORDER BY "BusinessEntityID", "StandardPrice" DESC
    LIMIT 6
) AS subquery;
