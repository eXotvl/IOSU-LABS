--Найти минимальную цену товара (ListPrice) из таблицы
--Production.Product. Не учитывать нулевую цену.
SELECT MIN("ListPrice") 
FROM "Production"."Product" 
WHERE "ListPrice" > 0;