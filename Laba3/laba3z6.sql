SELECT p2.*
FROM "Production"."Product" p1
JOIN "Production"."Product" p2 ON p1."Color" = p2."Color"
WHERE p1."Name" = 'ML Road Frame-W - Yellow, 38';
