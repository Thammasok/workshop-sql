TYPE=VIEW
query=select `employee_lg`.`employee`.`emp_no` AS `emp_no`,`employee_lg`.`employee`.`first_name` AS `first_name`,`employee_lg`.`employee`.`last_name` AS `last_name`,`employee_lg`.`employee`.`birth_date` AS `birth_date`,`employee_lg`.`employee`.`gender` AS `gender`,`employee_lg`.`employee`.`hire_date` AS `hire_date`,`emp_dept_name`(`employee_lg`.`employee`.`emp_no`) AS `department` from `employee_lg`.`employee`
md5=31bbeca2beb2c6511b1400c86f36d4fb
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=0001686802805121146
create-version=2
source=SELECT\n    emp_no,\n    first_name , last_name ,\n    birth_date , gender,\n    hire_date,\n    emp_dept_name(emp_no) as department\nfrom\n    employee
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `employee_lg`.`employee`.`emp_no` AS `emp_no`,`employee_lg`.`employee`.`first_name` AS `first_name`,`employee_lg`.`employee`.`last_name` AS `last_name`,`employee_lg`.`employee`.`birth_date` AS `birth_date`,`employee_lg`.`employee`.`gender` AS `gender`,`employee_lg`.`employee`.`hire_date` AS `hire_date`,`emp_dept_name`(`employee_lg`.`employee`.`emp_no`) AS `department` from `employee_lg`.`employee`
mariadb-version=101103
