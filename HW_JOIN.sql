select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;

 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
 
 select employee_name, monthly_salary from employee_salary
 inner join salary on employee_salary.salary_id = salary.id
 join employees on employees.id = employee_salary.employee_id
 
 
 2. ������� ���� ���������� � ������� �� ������ 2000.
 
 select employee_name, monthly_salary from employee_salary 
 join employees on employee_id = employees.id 
 join salary on salary_id = salary.id 
 where monthly_salary < '2000';
 
 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 
select monthly_salary,employee_name from employee_salary   
join salary on employee_salary.salary_id = salary.id
left join employees on employee_salary.employee_id  = employees.id
where employee_name is null;

 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 
 select monthly_salary,employee_name from employee_salary 
 join salary on salary_id = salary.id
 left join employees on employee_id = employees.id
 where employee_name is null and monthly_salary < '2000';
 
 5. ����� ���� ���������� ���� �� ��������� ��.
 
 select employee_name, salary_id from employees 
 left join employee_salary on employees.id = employee_id
 where salary_id is null
 
 6. ������� ���� ���������� � ���������� �� ���������.
 
 select employee_name,role_name  from roles_employee
 join employees on employee_id = employees.id
 join roles on roles_employee.role_id = roles.id 
 
 
 7. ������� ����� � ��������� ������ Java �������������.
 
 select employee_name,role_name  from roles_employee
 join employees on employee_id = employees.id
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Java %'
 
 8. ������� ����� � ��������� ������ Python �������������.
 
 select employee_name,role_name  from roles_employee
 join employees on employee_id = employees.id
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Python%'
 
 9. ������� ����� � ��������� ���� QA ���������.
 
 select employee_name,role_name  from roles_employee
 join employees on employee_id = employees.id
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%QA%'
 
 10. ������� ����� � ��������� ������ QA ���������.
 
 select employee_name,role_name  from roles_employee
 join employees on employee_id = employees.id
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Manual QA%'
 
 11. ������� ����� � ��������� ��������������� QA
 
 select employee_name,role_name  from roles_employee
 join employees on employee_id = employees.id
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Automation QA%'
 
 12. ������� ����� � �������� Junior ������������
 
 --employee_name,role_name,monthly_salary
 --�����
 select employee_name,role_name,monthly_salary from employee_salary
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Junior%'
 
 13. ������� ����� � �������� Middle ������������
 
 select employee_name,role_name,monthly_salary from employee_salary 
 right join employees on employee_salary.employee_id = employees.id
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Middle%'
 
 14. ������� ����� � �������� Senior ������������
 
 select employee_name,role_name,monthly_salary from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Senior%'
 
 15. ������� �������� Java �������������
 
 select employee_name,role_name,monthly_salary from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Java %'
 
 16. ������� �������� Python �������������
 
 select employee_name,role_name,monthly_salary from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Python%'
 
 17. ������� ����� � �������� Junior Python �������������
 
 select employee_name,role_name,monthly_salary from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Junior Python%'
 
 
 18. ������� ����� � �������� Middle JS �������������
 
 select employee_name,role_name,monthly_salary from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Middle JavaScript%'
 
 19. ������� ����� � �������� Senior Java �������������
 
 select employee_name,role_name,monthly_salary from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Senior Java %'
 
 20. ������� �������� Junior QA ���������
 
 select employee_name,role_name,monthly_salary from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like 'Junior%QA%'

 21. ������� ������� �������� ���� Junior ������������
 
 select avg (monthly_salary) from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Junior%'

 22. ������� ����� ������� JS �������������
 
 select sum (monthly_salary) from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%JavaScript%'
 
 23. ������� ����������� �� QA ���������
 
 select min (monthly_salary) from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%QA%'
 
 24. ������� ������������ �� QA ���������
 
 select max (monthly_salary) from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%QA%'
 
 25. ������� ���������� QA ���������
 
 select COUNT (monthly_salary) from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%QA%'
 
 26. ������� ���������� Middle ������������.
 
 select COUNT (monthly_salary) from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%Middle%'
 
 27. ������� ���������� �������������
 
 select COUNT (monthly_salary) from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%developer%'
 
 28. ������� ���� (�����) �������� �������������.
 
 select sum (monthly_salary) from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where role_name like '%developer%'
 
 29. ������� �����, ��������� � �� ���� ������������ �� �����������
 
 select employee_name,role_name,monthly_salary from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 order by monthly_salary
 
 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
 
 select employee_name,role_name,monthly_salary from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where monthly_salary between  '1700' and '2300'
 order by monthly_salary
 
 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
 
 select employee_name,role_name,monthly_salary from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where monthly_salary < '2300'
 order by monthly_salary
 
 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
 
 select employee_name,role_name,monthly_salary from employee_salary 
 right join employees on employee_salary.employee_id = employees.id 
 left join salary on employee_salary.salary_id = salary.id 
 join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles_employee.role_id = roles.id 
 where monthly_salary in ('1100', '1500', '2000')
 order by monthly_salary
 