create database employee_attrition;
use employee_attrition;
select * from employee_attrition;
select attrition,count(*) from employee_attrition group by attrition;
select attrition,joblevel,count(attrition) from employee_attrition group by joblevel,attrition order by joblevel;
select distancefromhome,count(attrition) from employee_attrition where attrition='Yes' group by distancefromhome order by count(attrition) desc;
select attrition,education,count(attrition) from employee_attrition group by education,attrition order by education;
select jobinvolvement,education,count(attrition) from employee_attrition where attrition='Yes' group by jobinvolvement,education order by education,jobinvolvement;
alter table employee_attrition add column income_cat varchar(50);
update employee_attrition set income_cat=case 
when monthlyincome<=8000 then 'below average' when monthlyincome>8000 and monthlyincome<=15000 then 'average' else 'above average' end;
set sql_safe_updates=0;
select age_cat,count(attrition) from employee_attrition where attrition='Yes' group by age_cat order by count(attrition);
select department,count(attrition) from employee_attrition where attrition='Yes' group by department order by count(attrition);
select educationfield,count(attrition) from employee_attrition where attrition='Yes' group by educationfield order by count(attrition);
select department,educationfield,count(attrition) from employee_attrition 
where attrition='Yes' group by department,educationfield order by count(attrition);
select businesstravel,count(*) from employee_attrition where attrition='yes' group by businesstravel;
select attrition,gender,count(*) from employee_attrition group by gender,attrition;
select attrition,gender,distancefromhome,count(*) from employee_attrition
 group by gender,attrition,distancefromhome order by attrition,gender,distancefromhome;
select attrition,gender,count(*) from employee_attrition group by gender,attrition;
select attrition,hourlyrate,count(*) from employee_attrition 
where attrition='Yes' group by hourlyrate,attrition order by hourlyrate;
select income_cat,count(attrition) from employee_attrition where attrition='Yes' group by income_cat order by count(attrition);
select attrition,maritalstatus,count(*) from employee_attrition group by maritalstatus,attrition order by maritalstatus;



