--Ранжируйте кол-во посещений пациента того или иного доктора. Лаба 2 Задание 4
select
    p.full_name
,    count(v.id) as visits_count
,    dense_rank() over (order by count(v.id) desc) as rank 
from
    visits v
join patients p on v.patient_id = p.id
group by
    p.full_name
order by
    visits_count desc