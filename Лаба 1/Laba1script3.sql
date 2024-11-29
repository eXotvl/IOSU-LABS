--Создать представление View, в котором будет выдан список Докторов по данной специальности Лаба 1 Задание 3
CREATE VIEW doctors_rank_doctora AS
SELECT 
    s.title AS doctor_spec,
    d.full_name as Imya_doctora
FROM 
    specialtys s
inner join doctors d
 on d.specialty=s.id
where s."title"='Терапевт';
SELECT * 
FROM doctors_rank_doctora