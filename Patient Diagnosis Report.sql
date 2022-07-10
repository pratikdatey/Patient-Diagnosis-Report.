create database patient;

show databases;

use patient;

create table patients (
date date , p_id integer, p_name varchar(50),age integer,weight integer, gender varchar(50),location varchar(50),
 ph_no integer  ,disease  varchar(50) ,doctor_name varchar(50), doctor_id integer);
 
 drop table patients;
 
 desc patients;
 
 insert  into patients values ('2022-11-30', 25 ,'Pratik Datey', 24, 64, 'male', 'Pune','856134645' ,'Covid', 'Vicky Sharma' ,635);

 select * from patients;
 
 select count(*)  AS total_patients from patients_datasets;
 
 select pid, p_name , gender ,disease ,max(age) from patients_datasets;
 
 select pid, p_name, now() as currentdate from patients_datasets;
 
 select p_name , ucase(p_name)as upper_P_name from patients_datasets;
 
 select p_name , length(p_name)as len_P_name from patients_datasets;
 
 select p_name, mid(gender,1,1) from patients_datasets;
 
 select p_name, doctor_name ,concat(p_name,' ',doctor_name) as name from patients_datasets;
 
 select age , log10(age) as log_age from patients_datasets;
 
 SELECT NULLIF(p_name,doctor_name) FROM patients_datasets;
 
 select age, if (age>40,'yes','no') as age_40 from patients_datasets;
 
 select doctor_name ,COUNT(*) occurences from patients_datasets
  GROUP BY doctor_name HAVING COUNT(*)>1;
