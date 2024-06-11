--Показать уникальные названия городов (City) из таблицы
--Person.Address, у которых известен ("AddressLine2").
select DISTINCT "City" 
from "Person"."Address"  
where "AddressLine2" notnull  