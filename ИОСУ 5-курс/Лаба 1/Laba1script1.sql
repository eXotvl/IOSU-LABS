--Создать Представление (View), показывающее ФИО, id и специалитет доктора Лаба 1 Задание 1
CREATE VIEW doctor_spec_info AS
SELECT 
    d.full_name AS doctor_full_name,
    d.plot AS doctor_plot,
    s.title AS spec_title
FROM 
    doctors d
JOIN 
    specialtys s ON d.specialty = s.id;
    
SELECT * 
FROM doctor_spec_info;