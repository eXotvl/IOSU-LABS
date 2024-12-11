--Создать проверку, чтобы нельзя было удалить Доктора из таблицы Doctors, если он/она связан со специализацией Specialty. Лаба 4 Задание 1
create or replace function prevent_doctor_deletion()
returns trigger as $$
begin 
-- Проверяем, есть ли связанные осужденные
    if old."ID_Specialty" is not null then 
        raise exception 'Нельзя удалить доктора, так как оно связан со специальностью (ID = %).', old."ID_Specialty";
    end if;
    return old;
end;
$$
language plpgsql;
-- Создание триггера
create trigger trg_prevent_doctor_deletion
before delete on "doctors"
for  each row
execute function prevent_doctor_deletion();
-- Тест
delete from doctors 
where "specialty" = 1;
