--Написать скрипты на добавление ограничения уникальности для тех
--полей, где это необходимо.
ALTER TABLE "Plot"
ADD CONSTRAINT "unique_title" UNIQUE ("Title");
