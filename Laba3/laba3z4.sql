SELECT DISTINCT pi1."ProductID"
FROM "Production"."ProductInventory" pi1
JOIN "Production"."ProductInventory" pi2 ON pi1."ProductID" = pi2."ProductID"
WHERE pi1."LocationID" <> pi2."LocationID";
