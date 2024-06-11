--Для каждого пола (Gender) найти суммарное количество часов
--отпуска из таблицы (поставить фильтр: работник был принят до 2008
--года) HumanResources.Employee, не учитывать пустые значения.
SELECT "Gender", SUM("VacationHours")
FROM "HumanResources"."Employee"
WHERE "HireDate" < '2008-01-01' AND "VacationHours" IS NOT NULL
GROUP BY "Gender";