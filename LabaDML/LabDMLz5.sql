--В отдельном файле написать скрипт, который создает копию таблицы
--без данных.
CREATE TABLE "Reception_schedule_structure_copy" AS
SELECT *
FROM "Reception_schedule"
WITH NO DATA;
