--Показать самый дорогой товар (Таблица Production.Product). Вывести наименование и цену товара.
SELECT "Name", "StandardCost"
FROM "Production"."Product"
ORDER BY "StandardCost" DESC
LIMIT 1;
