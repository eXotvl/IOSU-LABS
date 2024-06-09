--Изменить запрос п.5 использовать CUBE. Отделить строки, созданные с
--помощью агрегатных функций от строк из фактической таблицы.
SELECT "BusinessEntityID",
       "LastReceiptDate",
       MAX("LastReceiptCost") AS MaxLastReceiptCost,
       GROUPING("BusinessEntityID") AS GroupingBusinessEntityID,
       GROUPING("LastReceiptDate") AS GroupingLastReceiptDate
FROM "Purchasing"."ProductVendor"
GROUP BY CUBE ("BusinessEntityID", "LastReceiptDate");