--Создать триггер для автоматической проверки заполнения обязательных 
--полей перед добавлением специализации в таблицу Doctors:
create or replace function check_doctors_required_fields()
returns trigger as $$
begin
-- Проверяем, заполнено ли поле "id"
    if new."id" is null then
        raise exception 'Поле "id" обязательно для заполнения.';
    end if;
-- Проверяем, заполнено ли поле "plot"
    if new."plot" is null then
        raise exception 'Поле "plot" обязательно для заполнения.';
    end if;
-- Проверяем, заполнено ли поле "specialty"
    if new."specialty" is null then
        raise exception 'Поле "specialty" обязательно для заполнения.';
 end if;
    return new;
end;
$$ language plpgsql;
create trigger trg_check_doctors_required_fields
before delete on "doctors"
for each row
execute function check_doctors_required_fields();
-- Проверка
insert into "doctors" ("full_name", "id", "specialty" , "plot")
values ('Георгий Черданцев',null, null, null);
