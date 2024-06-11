--Вывести пол, где среднее количество часов выходных больше 50 из
--таблицы HumanResources.Employee.
SELECT "Gender", AVG("VacationHours") AS AverageVacationHours
FROM "HumanResources"."Employee"
GROUP BY "Gender"
HAVING AVG("VacationHours") > 50;