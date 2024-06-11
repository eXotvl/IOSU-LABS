--Показать поля PersonType, NameStyle, Title, FirstName,
--MiddleName, LastName из таблицы Person.Person. Неизвестные
--значения поля Title заменить на 'Dear' (уважаемый). Названия
--полей оставить без изменений.
SELECT p."PersonType", 
p."NameStyle", 
coalesce ("Title", 'Dear')
as "Title",
   "FirstName", 
   "MiddleName", 
   "LastName"
FROM "Person"."Person" p 