--В отдельном файле написать скрипт, который создает копию таблицы
--по условию.
CREATE TABLE "Reception_schedule_conditional_copy" AS
SELECT *
FROM "Reception_schedule"
WHERE "Doctor_id" = 5;
