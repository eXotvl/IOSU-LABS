--Рассчитать средний час посещения врача в диапазоне двух предшествующих и двух последующих строк для текущей строки. Лаба 2 Задание 6
select
    d.full_name
,    v.visit_datetime
,    avg(extract(hour from v.visit_datetime)) over (partition by d.id order by v.visit_datetime rows between 2 preceding and 2 following)
from 
    visits v
join doctors d on v.doctor_id = d.id
order by 
    d.full_name, v.visit_datetime