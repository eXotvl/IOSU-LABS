SELECT sp."StateProvinceID",
sp."Name",
 sp."TerritoryID"
FROM "Person"."StateProvince" sp 
WHERE "Name" IN ('Alaska', 'Alabama', 'Colorado', 'Georgia', 'Iowa')