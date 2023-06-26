TYPE=VIEW
query=select `employee_sm`.`dept_emp`.`emp_no` AS `emp_no`,max(`employee_sm`.`dept_emp`.`from_date`) AS `from_date`,max(`employee_sm`.`dept_emp`.`to_date`) AS `to_date` from `employee_sm`.`dept_emp` group by `employee_sm`.`dept_emp`.`emp_no`
md5=9d9777799184fb95074c6f0c948465fc
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=0001686802877181010
create-version=2
source=SELECT emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date\n    FROM dept_emp\n    GROUP BY emp_no
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `employee_sm`.`dept_emp`.`emp_no` AS `emp_no`,max(`employee_sm`.`dept_emp`.`from_date`) AS `from_date`,max(`employee_sm`.`dept_emp`.`to_date`) AS `to_date` from `employee_sm`.`dept_emp` group by `employee_sm`.`dept_emp`.`emp_no`
mariadb-version=101103
