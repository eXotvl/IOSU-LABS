--Получить предыдущее имя предыдущего пациента доктора. Лаба 2 Задание 7
select
    d.full_name as doctor_name
,    p.full_name as patient_name
,    v.visit_datetime
,    lag(p.full_name) over (partition by d.full_name order by v.visit_datetime) as previour_patient
from 
    visits v
join doctors d on v.doctor_id = d.id
join patients p on v.patient_id = p.id
order by
	d.full_name,
    v.visit_datetime
    