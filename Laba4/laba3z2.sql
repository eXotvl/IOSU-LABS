SELECT 
    (SELECT COUNT(*) 
     FROM "HumanResources"."Employee" e2 
     WHERE e2."HireDate" <= e1."HireDate") AS EmployeeRank,
    "BusinessEntityID",
    "HireDate"
FROM 
    "HumanResources"."Employee" e1
ORDER BY 
    "HireDate";
