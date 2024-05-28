SELECT "p"."Name", 
       CASE 
           WHEN "pm"."Name" IS NOT NULL THEN 'Есть'
           ELSE 'Нет'
       END AS Есть_модель
FROM "Production"."Product" "p"
LEFT OUTER JOIN "Production"."ProductModel" "pm" ON "p"."ProductModelID" = "pm"."ProductModelID";
