--Создать представление View, в котором через имя доктора увидим и его специальность и район за которым он закреплен Лаба 1 Задание 4
CREATE VIEW doctors_po_imeni AS
SELECT 
    d.full_name as Imya_doctora,
    p.title as Rayon,
    s.title as Spec
FROM 
    doctors d
inner join plot p
 on p.id=d.plot
inner join specialtys s
on s.id=d.specialty
where d."full_name"='Рафаил Архангел Божий';
SELECT * 
FROM doctors_po_imeni