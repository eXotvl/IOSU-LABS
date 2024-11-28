-- Функция поиска специализации доктора по имени и фамилии
create or replace function fGetDoctorsNames(
    fullname varchar(255)
) 
returns table(Name varchar(100) ) 
language plpgsql 
as $$
begin
    return QUERY 
    select a."title"
    from "Polyclinic".public."doctors" d
    inner join "Polyclinic".public."specialtys" a
    on  d."specialty" = a."id"
    where d."full_name" = fullname;
end;
$$;

-- Проверка работы функции
select * 
from fGetDoctorsNames('Михаил Архангел Божий');
