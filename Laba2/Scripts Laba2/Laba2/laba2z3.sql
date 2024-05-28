SELECT "Gender", SUM("VacationHours")
FROM "HumanResources"."Employee"
WHERE "HireDate" < '2008-01-01' AND "VacationHours" IS NOT NULL
GROUP BY "Gender";