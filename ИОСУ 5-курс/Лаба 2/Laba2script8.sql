--Для каждого пациента выведите его время посещения и время следующего продукта в хронологическом порядке. Лаба 2 Задание 8
select
    p.full_name as patient_name
,    v.visit_datetime
,    lead(v.visit_datetime) over (partition by p.id order by v.visit_datetime) as next_visit
from 
    visits v
join patients p on v.patient_id = p.id
order by 
    p.id, v.visit_datetime