SELECT COALESCE(CAST("BusinessEntityID" AS VARCHAR), 'Total') AS "BusinessEntityID",
       COALESCE("LastReceiptDate"::TEXT, 'Total') AS "LastReceiptDate",
       MAX("LastReceiptCost") AS "MaxLastReceiptCost"
FROM (
    SELECT "BusinessEntityID",
           "LastReceiptDate",
           "LastReceiptCost"
    FROM "Purchasing"."ProductVendor"
    UNION ALL
    SELECT NULL::INTEGER AS "BusinessEntityID",
           NULL::DATE AS "LastReceiptDate",
           MAX("LastReceiptCost") AS "LastReceiptCost"
    FROM "Purchasing"."ProductVendor"
) AS subquery
GROUP BY GROUPING SETS (("BusinessEntityID", "LastReceiptDate"), ());