TYPE=VIEW
query=select `employee_sm`.`employee`.`emp_no` AS `emp_no`,`employee_sm`.`employee`.`first_name` AS `first_name`,`employee_sm`.`employee`.`last_name` AS `last_name`,`employee_sm`.`employee`.`birth_date` AS `birth_date`,`employee_sm`.`employee`.`gender` AS `gender`,`employee_sm`.`employee`.`hire_date` AS `hire_date`,`emp_dept_name`(`employee_sm`.`employee`.`emp_no`) AS `department` from `employee_sm`.`employee`
md5=bf354e5536d03203a19e8ab027c8a3a3
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=0001686802965109901
create-version=2
source=SELECT\n    emp_no,\n    first_name , last_name ,\n    birth_date , gender,\n    hire_date,\n    emp_dept_name(emp_no) as department\nfrom\n    employee
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `employee_sm`.`employee`.`emp_no` AS `emp_no`,`employee_sm`.`employee`.`first_name` AS `first_name`,`employee_sm`.`employee`.`last_name` AS `last_name`,`employee_sm`.`employee`.`birth_date` AS `birth_date`,`employee_sm`.`employee`.`gender` AS `gender`,`employee_sm`.`employee`.`hire_date` AS `hire_date`,`emp_dept_name`(`employee_sm`.`employee`.`emp_no`) AS `department` from `employee_sm`.`employee`
mariadb-version=101103
