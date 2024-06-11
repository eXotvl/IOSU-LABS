--Для каждого из продуктов выведите его название и цену,
--а также название и цену более дорогого продукта ("Production"."Product").
SELECT 
    p1."Name", 
    p1."StandardCost", 
    (SELECT 
        "Name" 
    FROM 
        "Production"."Product" p2 
    WHERE 
        p2."StandardCost" > p1."StandardCost" 
    ORDER BY 
        p2."StandardCost" ASC 
    LIMIT 1) AS "ExpensiveProductName", 
    (SELECT 
        "StandardCost" 
    FROM 
        "Production"."Product" p2 
    WHERE 
        p2."StandardCost" > p1."StandardCost" 
    ORDER BY 
        p2."StandardCost" ASC 
    LIMIT 1) AS "ExpensiveProductCost"
FROM 
    "Production"."Product" p1;
