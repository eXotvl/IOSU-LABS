SELECT b."BusinessEntityID",
       CASE 
           WHEN s."BusinessEntityID" IS NOT NULL THEN 'Работает'
           ELSE 'Не работает'
       END AS Работает_в_магазине
FROM "Sales"."Store" s
RIGHT OUTER JOIN "Person"."BusinessEntity" b ON b."BusinessEntityID" = s."BusinessEntityID";
