--Написать скрипты на добавление ограничения проверок CHECK для
--тех полей, где это необходимо.
ALTER TABLE "Plot"
ADD CONSTRAINT "title_length_check" CHECK (char_length("Title") >= 4);
