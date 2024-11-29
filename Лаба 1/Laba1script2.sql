--Создать Представление (View), в котором будет выставлен список Докторов и их закрепленных пациентов Лаба 1 Задание 2
CREATE VIEW patients_for_doctor AS
SELECT 
    d.full_name AS doctor_full_name,
    p.full_name AS patient_full_name,
    a.adress AS patient_address
FROM 
    doctors d
JOIN 
    plot pl ON d.plot = pl.id
JOIN 
    adresses a ON pl.id = a.plot
JOIN 
    patients p ON a.id = p.address;

   SELECT * FROM patients_for_doctor;
    
