SELECT "Gender", AVG("VacationHours") AS AverageVacationHours
FROM "HumanResources"."Employee"
GROUP BY "Gender"
HAVING AVG("VacationHours") > 50;