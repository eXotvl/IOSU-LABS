SELECT 
    "Name", 
    "StandardCost", 
    "StandardCost" - (SELECT AVG("StandardCost") FROM "Production"."Product") AS "CostDeviation"
FROM 
    "Production"."Product";
