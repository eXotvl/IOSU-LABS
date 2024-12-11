--Создать триггер, который автоматически пишет "Визит создан" в Visits Лаб 4 Задание 3
create or replace function simple_log_visits_creation()
returns trigger as $$
begin
    new."new_visits" = 'Визит создан.';
    return new;
end;
$$ language plpgsql;

-- Создание триггера
create trigger trg_simple_log_visits_creation
before insert on "visits"
for each row
execute function simple_log_visits_creation();

-- Создание нового значения
insert into "visits" ("id","patient_id", "doctor_id", "visit_datetime")
values (27, 7, 1,'2024-11-29 15:00:00.000');

-- Проверка
select *
from visits v
