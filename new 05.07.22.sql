1.������� ������� employees

create table employees(
id serial primary key,
employee_name varchar (50) not null
);

2.��������� ������� employee 70 ��������

insert into employees(employee_name)
values    ('���'), --1
		  ('�����'), --2
		  ('������'), --3
		  ('�������'), --4
		  ('����'), --5
		  ('����'), --6
		  ('�����'), --7
		  ('���'), --8
		  ('�����'), --9
		  ('����'), --10
		  ('��������'), --11
		  ('������'), --12
		  ('����������'), --13
		  ('�������'), --14
		  ('�����'), --15
		  ('�����'), --16
		  ('�����'), --17
		  ('������'), --18
		  ('���������'), --19
		  ('�����'), --20
		  ('�����'), --21
		  ('Ը���'), --22
		  ('�����'), --23
		  ('�����'), --24
		  ('���������'), --25
		  ('�����'), --26
		  ('����'), --27
		  ('������'), --28
		  ('�����'), --29
		  ('������'), --30
		  ('������'), --31
		  ('��������'), --32
		  ('�����'), --33
		  ('������'), --34
		  ('���������'), --35
		  ('����������'), --36
		  ('��������'), --37
		  ('������'), --38
		  ('������'), --39
		  ('������'), --40
		  ('�������'), --41
		  ('�������'), --42
		  ('������'), --43
		  ('������'), --44
		  ('������'), --45
		  ('������'), --46
		  ('����������'), --47
		  ('���'), --48
		  ('���������'), --49
		  ('������'), --50
		  ('�����'), --51
		  ('�����'), --52
		  ('����'), --53
		  ('����'), --54
		  ('�������'), --55
		  ('�����'), --56
		  ('�������'), --57
		  ('��������'), --58
		  ('�����'), --59
		  ('������'), --60
		  ('����'), --61
		  ('�������'), --62
		  ('������'), --63
		  ('�������'), --64
		  ('������'), --65
		  ('������'), --66
		  ('�����'), --67
		  ('�������'), --68
		  ('��������'), --69
		  ('�������'); --70
		
3.������� ������� salary
	
create table salary(
 id Serial primary key,
 monthly_salary Int not null
);

4.��������� ������� salary 16 ��������

insert into salary(monthly_salary)
values	(1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

5.������� ������� employee_salary
	
	create table employee_salary(
	id Serial primary key,
	employee_id Int not null unique,
	salary_id Int not null
	);

6.��������� ������� employee_salary 40 ��������:
- � 10 ������� �� 40 �������� �������������� employee_id

insert into employee_salary (employee_id, salary_id)
values  (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 16),
		(17, 1),
		(18, 2),
		(19, 3),
		(20, 4),
		(21, 5),
		(22, 6),
		(23, 7),
		(24, 8),
		(25, 9),
		(26, 10),
		(27, 11),
		(28, 12),
		(29, 13),
		(30, 14),
		(71, 15),
		(72, 16),
		(73, 1),
		(74, 2),
		(75, 3),
		(76, 4),
		(77, 5),
		(78, 6),
		(79, 7),
		(80, 8);
	
7.������� ������� roles

create table roles(
id Serial primary key,
role_name int not null unique
);

8.�������� ��� ������ role_name � int �� varchar(30)

ALTER TABLE roles ALTER COLUMN role_name TYPE VARCHAR(30);

9.��������� ������� roles 20 ��������

insert into roles(role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

10.������� ������� roles_employee:
- employee_id|������� ���� ��� ������� employees, ���� id
- role_id|������� ���� ��� ������� roles, ���� id
	
create table roles_employee(
id Serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);
	
11.��������� ������� roles_employee 40 ��������

	insert into roles_employee(employee_id, role_id)
values  (1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9),
		(10,10),
		(11,11),
		(12,12),
		(13,13),
		(14,14),
		(15,15),
		(16,16),
		(17,17),
		(18,18),
		(19,19),
		(20,20),
		(21,1),
		(22,2),
		(23,3),
		(24,4),
		(25,5),
		(26,6),
		(27,7),
		(28,8),
		(29,9),
		(30,10),
		(31,11),
		(32,12),
		(33,13),
		(34,14),
		(35,15),
		(36,16),
		(37,17),
		(38,18),
		(39,19),
		(40,20);
		
	
--DELETE FROM salary where id=32;

--drop table employee_salary;

select * from employee_salary;

select * from salary;
