--Написать скрипты на добавление внешнего ключа.
ALTER TABLE "Reception_schedule"
ADD CONSTRAINT "fk_doctor"
FOREIGN KEY ("Doctor_id") REFERENCES "Doctors" ("ID");

