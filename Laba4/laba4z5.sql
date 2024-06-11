--Для каждого Product вывести отклонение от средней StandardCost. 
--Таблица "Production"."Product".
SELECT 
    "Name", 
    "StandardCost", 
    "StandardCost" - (SELECT AVG("StandardCost") FROM "Production"."Product") AS "CostDeviation"
FROM 
    "Production"."Product";
