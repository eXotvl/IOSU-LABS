--Ранжируйте докторов по общему кол-ву их пациентов. Лаба 2 Задание 3
select
    d.full_name
,    count(v.patient_id) as visits_count
,    rank() over (order by count(v.patient_id) desc) as rank 
from
    visits v
join doctors d on v.doctor_id = d.id
group by
    d.full_name
order by
    visits_count desc
    