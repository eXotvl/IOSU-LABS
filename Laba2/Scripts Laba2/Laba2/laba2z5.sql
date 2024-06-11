--Вывести BusinessEntityID, LastReceiptDate и
--максимальное значение LastReceiptCost для
--BusinessEntityID с разными LastReceiptDate, предусмотреть
--вывод общей суммы для всех LastReceiptCost у различных
--BusinessEntityID из таблицы Purchasing.ProductVendor.
--(Использовать ROOLUP).
SELECT "BusinessEntityID",
       "LastReceiptDate",
       MAX("LastReceiptCost") AS MaxLastReceiptCost
FROM "Purchasing"."ProductVendor"
GROUP BY rollup ("BusinessEntityID", "LastReceiptDate");