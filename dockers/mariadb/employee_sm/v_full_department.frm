TYPE=VIEW
query=select `employee_sm`.`department`.`dept_no` AS `dept_no`,`employee_sm`.`department`.`dept_name` AS `dept_name`,`current_manager`(`employee_sm`.`department`.`dept_no`) AS `manager` from `employee_sm`.`department`
md5=b0a089ec6ce8bdcd7fcb3509409c740d
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=0001686802965119621
create-version=2
source=SELECT\n    dept_no, dept_name, current_manager(dept_no) as manager\nFROM\n    department
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `employee_sm`.`department`.`dept_no` AS `dept_no`,`employee_sm`.`department`.`dept_name` AS `dept_name`,`current_manager`(`employee_sm`.`department`.`dept_no`) AS `manager` from `employee_sm`.`department`
mariadb-version=101103
