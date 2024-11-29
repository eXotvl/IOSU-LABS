-- Поиск свободного ID, в которое мы можем записать значения
create or replace function fGetNextDoctorsID()
returns int 
language plpgsql 
as $$
declare
next_id int;
begin
select coalesce(max(b."id"), 0) + 1 into next_id from "Polyclinic".public."doctors" b;
return next_id;
end;
$$;

Проверка
select fGetNextDoctorsID();
