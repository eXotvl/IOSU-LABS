--В отдельном файле написать скрипт, который создает копию таблицы с
--выбранными полями.
CREATE TABLE "Reception_schedule_partial_copy" AS
SELECT "ID", "Date_and_time", "Doctor_id"
FROM "Reception_schedule";
