drop table visits;
create table visits(id serial primary KEY, patient_id int, doctor_id int, visit_datetime timestamp);