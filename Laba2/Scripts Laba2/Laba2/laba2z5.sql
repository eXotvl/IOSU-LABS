SELECT "BusinessEntityID",
       "LastReceiptDate",
       MAX("LastReceiptCost") AS MaxLastReceiptCost
FROM "Purchasing"."ProductVendor"
GROUP BY rollup ("BusinessEntityID", "LastReceiptDate");