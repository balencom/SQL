--Создать таблицу employees

create table employees(
id serial primary key,
employee_name varchar (50) not null
);

--Наполнить таблицу employee 70 строками

insert into employees(employee_name)
values  ('a'),
		('b'),         
		('c'),
		('d'),
		('e'),
		('f'),
		('g'),
		('h'),
		('i'),
		('j'),
		('k'),
		('l'),
		('m'),
		('n'),
		('o'),
		('p'),
		('q'),
		('r'),
		('s'),
		('t'),
		('u'),
		('v'),
		('w'),
		('x'),
		('y'),
		('z'),
		('1'),
		('2'),
		('3'),
		('4'),
		('5'),
		('6'),
		('7'),
		('8'),
		('9'),
		('10'),
		('11'),
		('12'),
		('13'),
		('14'),
		('15'),
		('16'),
		('17'),
		('18'),
		('19'),
		('20'),
		('21'),
		('22'),
		('23'),
		('24'),
		('25'),
		('26'),
		('27'),
		('28'),
		('29'),
		('30'),
		('31'),
		('32'),
		('33'),
		('34'),
		('35'),
		('36'),
		('37'),
		('38'),
		('39'),
		('40'),
		('41'),
		('42'),
		('43'),
		('44'),
		('45');
		
--Создать таблицу salary
	
create table salary(
 id Serial primary key,
 monthly_salary Int not null
);

--Наполнить таблицу salary 16 строками

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

--Создать таблицу employee_salary
	
	create table employee_salary(
	id Serial primary key,
	employee_id Int not null unique,
	salary_id Int not null
	);

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строках из 40 вставить несуществующие employee_id

insert into employee_salary (id, employee_id, salary_id)
values  (1, 1, 1),
		(2, 2, 2),
		(3, 3, 3),
		(4, 4, 4),
		(5, 5, 5),
		(6, 6, 6),
		(7, 7, 7),
		(8, 8, 8),
		(9, 9, 9),
		(10, 10, 10),
		(11, 11, 11),
		(12, 12, 12),
		(13, 13, 13),
		(14, 14, 14),
		(15, 15, 15),
		(16, 16, 16),
		(17, 17, 17),
		(18, 18, 18),
		(19, 19, 19),
		(20, 20, 20),
		(21, 21, 21),
		(22, 22, 22),
		(23, 23, 23),
		(24, 24, 24),
		(25, 25, 25),
		(26, 26, 26),
		(27, 27, 27),
		(28, 28, 28),
		(29, 29, 29),
		(30, 30, 30),
		(31, 71, 31),
		(32, 72, 32),
		(33, 73, 33),
		(34, 74, 34),
		(35, 75, 35),
		(36, 76, 36),
		(37, 77, 37),
		(38, 78, 38),
		(39, 79, 39),
		(40, 80, 40);
	
--Создать таблицу roles

create table roles(
id Serial primary key,
role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30)

ALTER TABLE roles ALTER COLUMN role_name TYPE VARCHAR(30);

--Наполнить таблицу roles 20 строками

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

--Создать таблицу roles_employee
-- employee_id|внешний ключ для таблицы employees, поле id
-- role_id|внешний ключ для таблицы roles, поле id
	
create table roles_employee(
id Serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);
	
--Наполнить таблицу roles_employee 40 строками

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
		
	
--DELETE FROM employee_salary where id=6;

--drop table salary;

--select * from roles_employee;

--select * from roles;
