--Ранжируйте кол-во посещений пациента того или иного доктора.Лаба 2 Задание 5
select
    d.full_name
,    p.full_name
,	count(v.id) as visits_count
,    rank() over (partition by d.id order by count(v.id) desc) as rank 
from 
    visits v
join patients p on v.patient_id = p.id
join doctors d on v.doctor_id = d.id
group by 
    d.id, p.id
order by 
	d.full_name,
    visits_count desc