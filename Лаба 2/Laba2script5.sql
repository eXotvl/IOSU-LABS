--Ранжируйте дату найма сотрудников в каждой гендерной категории. Таблица "HumanResources"."Employee". Лаба 2 Задание 5
select e."HireDate" 
      ,e."Gender" 
      ,"BusinessEntityID" 
      ,rank () over (partition by e."Gender" order by e."HireDate" desc) as rank
from "HumanResources"."Employee" e 
order by e."HireDate" 
 ,e."Gender" desc;
