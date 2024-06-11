--Показать название фирмы (Name) из таблицы Purchasing.Vendor.
--Если фирма называется 'Advanced Bicycles', заменить значение
--поля Name на NULL. Названия полей оставить без изменений.	
select
"Name",
NULLIF("Name", 'Advanced Bicycles') 
AS "Name"
FROM "Purchasing"."Vendor" 