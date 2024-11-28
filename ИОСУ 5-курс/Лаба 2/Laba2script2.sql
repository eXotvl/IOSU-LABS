--Выведите порядковый номер посещения докторов пациентами. Лаба 2 Задание 2
select 
    d.full_name
,    p.full_name
,    v.visit_datetime
,    row_number() over (partition by v.doctor_id, v.patient_id order by v.visit_datetime) as visit_number
from 
    visits v
join doctors d on v.doctor_id = d.id
join patients p on v.patient_id = p.id
order by 
    d.full_name, visit_number