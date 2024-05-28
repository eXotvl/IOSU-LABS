SELECT p."ProductID", 
       p."Name", 
       p."Color",
       p."Class",
       COALESCE("Class", "Color", 'UNKNOWN') 
       AS "Measurement"         
FROM "Production"."Product" p