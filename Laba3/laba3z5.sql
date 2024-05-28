SELECT DISTINCT pi1."LocationID"
FROM "Production"."ProductInventory" pi1
JOIN "Production"."ProductInventory" pi2 ON pi1."LocationID" = pi2."LocationID"
WHERE pi1."ProductID" <> pi2."ProductID";