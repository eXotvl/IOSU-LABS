SELECT p."ProductID",
p. "Name",
p."Color"
FROM "Production"."Product" p
where p."Name" like '%Chainring%'