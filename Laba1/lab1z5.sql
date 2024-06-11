--Показать ID (ProductID), название (Name) и цвет (Color) товаров
--из таблицы Production.Product, содержащих в названии слово
--'Chainring' (звездочка).
SELECT p."ProductID",
p. "Name",
p."Color"
FROM "Production"."Product" p
where p."Name" like '%Chainring%'