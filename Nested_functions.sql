REM   Script: Nesting Function Example
REM   from Percipio

select * from hr.employees;

select last-name, lpad(salary,15, '$') SALARY, rpad(' ', salary/1000, '*') "EMPLOYEES AND THEIR SALARIES" 
from hr.employees;

select last_name, lpad(salary,15, '$') SALARY, rpad(' ', salary/1000, '*') "EMPLOYEES AND THEIR SALARIES" 
from hr.employees;

select last_name, lpad(salary,15, '$') SALARY, rpad(' ', salary/1000, '*') "EMPLOYEES AND THEIR SALARIES" 
from hr.employees 
orcder by salary desc;

select last_name, lpad(salary,15, '$') SALARY, rpad(' ', salary/1000, '*') "EMPLOYEES AND THEIR SALARIES" 
from hr.employees 
order by salary desc;

select last_name, lpad(salary,15, '$') SALARY, rpad(' ', salary/1000, '*') "EMPLOYEES AND THEIR SALARIES" 
from hr.employees 
order by salary desc;

select last_name, lpad(salary,15, '$') SALARY, rpad(' ', salary/1000, '*') "EMPLOYEES AND THEIR SALARIES" 
from hr.employees 
order by salary desc;

select last_name, 
 UPPER)CONCAT(SUBSTR (LAST_NAME, 1, 8), 'US' 
 FROM hr.employees 
 Where department_id = 60;

select last_name, 
 UPPER(CONCAT(SUBSTR (LAST_NAME, 1, 8), 'US' 
 FROM hr.employees 
 Where department_id = 60;

select last_name, 
 UPPER CONCAT(SUBSTR (LAST_NAME, 1, 8), 'US' 
 FROM hr.employees 
 Where department_id = 60;

select last_name, 
 UPPER (CONCAT(SUBSTR (LAST_NAME, 1, 8)), 'US' 
 FROM hr.employees 
 Where department_id = 60;

select last_name, 
 UPPER (CONCAT(SUBSTR (LAST_NAME, 1, 8), 'US')) 
 FROM hr.employees 
 Where department_id = 60;

