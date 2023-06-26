TYPE=VIEW
query=select `employee_lg`.`dept_emp`.`emp_no` AS `emp_no`,max(`employee_lg`.`dept_emp`.`from_date`) AS `from_date`,max(`employee_lg`.`dept_emp`.`to_date`) AS `to_date` from `employee_lg`.`dept_emp` group by `employee_lg`.`dept_emp`.`emp_no`
md5=6753d4bfcf154f5057afb7551d20e616
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=0001686802732048072
create-version=2
source=SELECT emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date\n    FROM dept_emp\n    GROUP BY emp_no
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `employee_lg`.`dept_emp`.`emp_no` AS `emp_no`,max(`employee_lg`.`dept_emp`.`from_date`) AS `from_date`,max(`employee_lg`.`dept_emp`.`to_date`) AS `to_date` from `employee_lg`.`dept_emp` group by `employee_lg`.`dept_emp`.`emp_no`
mariadb-version=101103
