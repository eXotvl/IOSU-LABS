-- Функция (процедура), которая вставляет данные в таблицу
create or replace procedure fInsertDoctor(
full_name varchar(255)
)
language plpgsql
as $$
declare
doctors_id int;
begin
-- Получаем следующий ID для нового доктора
doctors_id := fGetNextDoctorsID();
-- Вставляем новую запись в таблицу
INSERT INTO "Polyclinic".public."doctors" ("id", "full_name")
VALUES (doctors_id, full_name);
END;
$$;

Проверка
call fInsertDoctor('Абдула Артём Олегович');

Проверка два
select *
from "Polyclinic".public."doctors"
