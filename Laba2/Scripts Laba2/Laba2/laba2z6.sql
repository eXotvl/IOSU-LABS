SELECT COALESCE(CAST("BusinessEntityID" AS VARCHAR), 'Total') AS "BusinessEntityID",
       COALESCE("LastReceiptDate"::TEXT, 'Total') AS "LastReceiptDate",
       MAX("LastReceiptCost") AS "MaxLastReceiptCost"
FROM "Purchasing"."ProductVendor"
GROUP BY CUBE("BusinessEntityID", "LastReceiptDate")
HAVING GROUPING("BusinessEntityID") = 1 OR GROUPING("LastReceiptDate") = 1 OR ("BusinessEntityID" IS NOT NULL AND "LastReceiptDate" IS NOT NULL);