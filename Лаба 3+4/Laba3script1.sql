-- Посчитать количество врачей
select count(*) as "TotalDoctors"
from "Polyclinic".public."doctors" d; 
-- Посчитать количество докторов с помощью функции
create or replace function "fGetTotalDoctors"()
returns integer
language plpgsql
as $$
declare 
total_doctors integer;
begin 
select count(*)
into total_doctors
from "Polyclinic".public."doctors" d;
return total_doctors;
end;
$$
--Вывод результата функции:
select * 
from "fGetTotalDoctors"();
