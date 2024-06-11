--Показать ID (StateProvinceID) и название (Name) регионов или
--штатов, а также ID страны, на территории которой они располагаются
--(TerritoryID) из таблицы Person.StateProvince. Показать
--только регионы из списка ('Alaska', 'Alabama', 'Colorado',
--'Georgia', 'Iowa'), используя оператор IN.
SELECT sp."StateProvinceID",
sp."Name",
 sp."TerritoryID"
FROM "Person"."StateProvince" sp 
WHERE "Name" IN ('Alaska', 'Alabama', 'Colorado', 'Georgia', 'Iowa')