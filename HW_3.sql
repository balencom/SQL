1.Создать таблицу employees

create table employees(
id serial primary key,
employee_name varchar (50) not null
);

2.Наполнить таблицу employee 70 строками

insert into employees(employee_name)
values    	  ('Лев'), --1
		  ('Дарья'), --2
		  ('Ульяна'), --3
		  ('Камилла'), --4
		  ('Илья'), --5
		  ('Иван'), --6
		  ('Алиса'), --7
		  ('Мия'), --8
		  ('Софья'), --9
		  ('Юлия'), --10
		  ('Всеволод'), --11
		  ('Полина'), --12
		  ('Александра'), --13
		  ('Дмитрий'), --14
		  ('Мария'), --15
		  ('Ольга'), --16
		  ('Савва'), --17
		  ('Матвей'), --18
		  ('Анастасия'), --19
		  ('София'), --20
		  ('Злата'), --21
		  ('Фёдор'), --22
		  ('Амина'), --23
		  ('Диана'), --24
		  ('Екатерина'), --25
		  ('Лидия'), --26
		  ('Мила'), --27
		  ('Богдан'), --28
		  ('Захар'), --29
		  ('Андрей'), --30
		  ('Андрей'), --31
		  ('Василиса'), --32
		  ('Роман'), --33
		  ('Даниил'), --34
		  ('Елизавета'), --35
		  ('Владислава'), --36
		  ('Виктория'), --37
		  ('Елисей'), --38
		  ('Ксения'), --39
		  ('Оливия'), --40
		  ('Николай'), --41
		  ('Евгений'), --42
		  ('Гордей'), --43
		  ('Михаил'), --44
		  ('Руслан'), --45
		  ('Максим'), --46
		  ('Константин'), --47
		  ('Ева'), --48
		  ('Александр'), --49
		  ('Кирилл'), --50
		  ('Давид'), --51
		  ('Артур'), --52
		  ('Анна'), --53
		  ('Марк'), --54
		  ('Алексей'), --55
		  ('Алина'), --56
		  ('Варвара'), --57
		  ('Владимир'), --58
		  ('Тихон'), --59
		  ('Сергей'), --60
		  ('Артём'), --61
		  ('Татьяна'), --62
		  ('Степан'), --63
		  ('Арсений'), --64
		  ('Дарина'), --65
		  ('Милана'), --66
		  ('Сафия'), --67
		  ('Ярослав'), --68
		  ('Кристина'), --69
		  ('Тимофей'); --70
		
3.Создать таблицу salary
	
create table salary(
 id Serial primary key,
 monthly_salary Int not null
);

4.Наполнить таблицу salary 16 строками

insert into salary(monthly_salary)
values		(1000),
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

5.Создать таблицу employee_salary
	
	create table employee_salary(
	id Serial primary key,
	employee_id Int not null unique,
	salary_id Int not null
	);

6.Наполнить таблицу employee_salary 40 строками:
- в 10 строках из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values  	(1, 1),
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
	
7.Создать таблицу roles

create table roles(
id Serial primary key,
role_name int not null unique
);

8.Поменять тип столба role_name с int на varchar(30)

ALTER TABLE roles ALTER COLUMN role_name TYPE VARCHAR(30);

9.Наполнить таблицу roles 20 строками

insert into roles(role_name)
values  	('Junior Python developer'),
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

10.Создать таблицу roles_employee:
- employee_id|внешний ключ для таблицы employees, поле id
- role_id|внешний ключ для таблицы roles, поле id
	
create table roles_employee(
id Serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);
	
11.Наполнить таблицу roles_employee 40 строками

	insert into roles_employee(employee_id, role_id)
values  	(1,1),
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
