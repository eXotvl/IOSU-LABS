-- Найти Дату последнего Визита Врача
select max(c."visit_datetime") as "lastvisitdatetime"
from "Polyclinic".public."visits" c;
-- Найти Дату последнего Визита с помощью функции
create or replace function "fGetlastvisitdatetime"()
returns date
language plpgsql
as $$
declare 
    last_visit_datetime date;
begin 
    select max("visit_datetime")
    into last_visit_datetime
    from "Polyclinic".public."visits";
    return last_visit_datetime;
end;
$$
-- Вывод результата функции:
select * 
from "fGetlastvisitdatetime"();

