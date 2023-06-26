TYPE=VIEW
query=select `l`.`emp_no` AS `emp_no`,`d`.`dept_no` AS `dept_no`,`l`.`from_date` AS `from_date`,`l`.`to_date` AS `to_date` from (`employee_sm`.`dept_emp` `d` join `employee_sm`.`dept_emp_latest_date` `l` on(`d`.`emp_no` = `l`.`emp_no` and `d`.`from_date` = `l`.`from_date` and `l`.`to_date` = `d`.`to_date`))
md5=d0e16e15661ca8287857f6df1eadfa16
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=0001686802877187195
create-version=2
source=SELECT l.emp_no, dept_no, l.from_date, l.to_date\n    FROM dept_emp d\n        INNER JOIN dept_emp_latest_date l\n        ON d.emp_no=l.emp_no AND d.from_date=l.from_date AND l.to_date = d.to_date
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `l`.`emp_no` AS `emp_no`,`d`.`dept_no` AS `dept_no`,`l`.`from_date` AS `from_date`,`l`.`to_date` AS `to_date` from (`employee_sm`.`dept_emp` `d` join `employee_sm`.`dept_emp_latest_date` `l` on(`d`.`emp_no` = `l`.`emp_no` and `d`.`from_date` = `l`.`from_date` and `l`.`to_date` = `d`.`to_date`))
mariadb-version=101103
