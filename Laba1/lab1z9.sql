--Показать ID департамента (DepartmentID), название отдела
--(GroupName) и вид деятельности данного отдела (Name) из таблицы
--HumanResources.Department и отсортировать строки таблицы в
--алфавитном порядке вида деятельности (Name).
SELECT "DepartmentID",
"GroupName", 
"Name"
FROM "HumanResources"."Department"  
ORDER BY "Name"