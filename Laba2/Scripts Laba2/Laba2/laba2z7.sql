--Изменить запрос п.5 использовать GROUPING SETS. Отделить строки,
--созданные с помощью агрегатных функций от строк из фактической
--таблицы.
SELECT "BusinessEntityID",
       "LastReceiptDate",
       MAX("LastReceiptCost") AS MaxLastReceiptCost,
       CASE
           WHEN GROUPING("BusinessEntityID") = 1 AND GROUPING("LastReceiptDate") = 1 THEN 'Agregate'
           WHEN GROUPING("BusinessEntityID") = 1 THEN 'Agregate by BusinessEntityID'
		   WHEN GROUPING("LastReceiptDate") = 1 THEN 'Agregate by LastReceiptDate'
		   ELSE 'Stroki'
       END AS RecordType
FROM "Purchasing"."ProductVendor"
GROUP BY GROUPING SETS (
    ("BusinessEntityID", "LastReceiptDate"),
    ("BusinessEntityID"),
    ()
);