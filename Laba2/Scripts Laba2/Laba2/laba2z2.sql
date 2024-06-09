--Найти средний вес (Weight) из таблицы Production.Product, не
--учитывать пустые значения.
SELECT AVG("Weight")
FROM "Production"."Product"
WHERE "Weight" IS NOT NULL;