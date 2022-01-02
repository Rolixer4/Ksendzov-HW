-- HW 2 START
create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

create table roles(
	id serial primary key,
	role_title varchar(30) unique not null
);

select * from roles;

create table salary_roles(
	id serial primary key,
	id_role int unique not null,
	id_salary int not null,
	foreign key (id_role)
		references roles(id),
	foreign key (id_salary)
		references salary(id)
);

select * from salary_roles;

insert into salary(monthly_salary)
	values (1000), 
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
		  

insert into roles(role_title)
	values ('QA_manual_junior'), 
		   ('QA_manual_middle'),
		   ('QA_manual_senior'),
		   ('QA_automation_junior'),
		   ('QA_automation_middle'),
		   ('QA_automation_senior'),
		   ('Developer_java_junior'),
		   ('Developer_java_middle'),
		   ('Developer_java_senior'),
		   ('Developer_python_junior'),
		   ('Developer_python_middle'),
		   ('Developer_python_senior'),
		   ('HR'),
		   ('Designer'),
		   ('Sales Manager'),
		   ('Project Manager'),
		   ('CEO'),
		   ('Manager');

insert into salary_roles(id_role, id_salary)
	values (1, 1), 
		   (2, 4),
		   (3, 4),
		   (4, 4),
		   (5, 2),
		   (6, 3),
		   (7, 5),
		   (8, 4),
		   (9, 2),
		   (10, 3),
		   (11, 6),
		   (12, 4),
		   (13, 3),
		   (14, 1),
		   (15, 9);
		  
--������� ������� drop table salary_roles;
		  

insert into salary_roles(id_role, id_salary)
	values (16,32);

alter table salary_roles
	add column devices varchar(50);

alter table roles
	drop column taxi;

delete from salary_roles
	where id=4;

update salary_roles 
	set id=4
	where id=7;

alter table roles
	add column parking int;

alter table roles
	rename column parking to taxi;

alter table roles
	alter column taxi type varchar(40) using taxi::varchar(30);

alter table roles
	alter column taxi type int using taxi::integer;

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

insert into employees(employee_name)
	values ('Nikita_S'),
		   ('Irina_T'),
		   ('Mark_V'),
		   ('Nadin_H'),
		   ('Ekaterina_T'),
		   ('Vasiliy_B'),
		   ('Egor_K'),
		   ('Maks_K'),
		   ('Alex_S'),
		   ('Elisabeth_O'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S'),
		   ('Nikita_S');
		  
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
	values (16334, 18);
		  
create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key(employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);


insert into roles_employee(employee_id, role_id)
	values (1, 3),
		   (2, 1),
		   (3, 5),
		   (4, 8),
		   (5, 1),
		   (6, 12),
		   (7, 13),
		   (8, 11),
		   (9, 2),
		   (10, 4),
		   (11, 11),
		   (12, 14),
		   (13, 13),
		   (14, 11),
		   (15, 2),
		   (16, 5),
		   (17, 8),
		   (18, 12),
		   (19, 15),
		   (20, 11),
		   (21, 2),
		   (22, 1),
		   (23, 7),
		   (24, 9),
		   (25, 10),
		   (26, 12),
		   (27, 1),
		   (28, 2),
		   (29, 4),
		   (30, 6),
		   (31, 10),
		   (32, 12),
		   (33, 14),
		   (34, 11),
		   (35, 2),
		   (36, 1),
		   (37, 3),
		   (38, 5),
		   (39, 2),
		   (40, 10);
select * from employee_salary;
		  
-- HW 3 START		  

-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name en, monthly_salary ms from employee_salary
	join employees on employee_salary.salary_id = employees.id
	join salary on salary_id = salary.id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary from employee_salary
	join employees on employee_salary.salary_id = employees.id
	join salary on salary_id = salary.id
	where monthly_salary < 2000;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary from employee_salary
	join employees on employee_salary.salary_id = employees.id
	join salary on salary_id = salary.id
	where employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary from employee_salary
	join employees on employee_salary.salary_id = employees.id
	join salary on salary_id = salary.id
	where monthly_salary < 2000 and employee_name is null;

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, monthly_salary from employee_salary es 
	join employees on es.employee_id = employees.id
	join salary on es.salary_id =  salary.id
	where monthly_salary is null;

-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_title from roles_employee re
	join employees on re.employee_id = employees.id 
	join roles on re.role_id = roles.id;

-- 7. ������� ����� � ��������� ������ Java �������������
select employee_name, role_title from roles_employee re 
	join employees on re.employee_id = employees.id 
	join roles on re.role_id = roles.id 
	where role_title like '%java%';

-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_title from roles_employee re 
	join employees on re.employee_id = employees.id 
	join roles on re.role_id = roles.id
	where role_title like '%python%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_title from roles_employee re 
	join employees on re.employee_id = employees.id 
	join roles on re.role_id = roles.id 
	where role_title like '%QA%'
	
-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_title from roles_employee re 
	join employees on re.employee_id = employees.id 
	join roles on re.role_id = roles.id
	where role_title like '%QA%' and role_title like '%manual%';

-- 11. ������� ����� � ��������� ��������������� QA
select employee_name, role_title from roles_employee re 
	join employees on re.employee_id = employees.id 
	join roles on re.role_id = roles.id
	where role_title like '%QA%' and role_title like '%automation%';

-- 12. ������� ����� � �������� Junior ������������
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role
	join roles on salary_roles.id_role = roles.id
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%junior%';

-- 13. ������� ����� � �������� Middle ������������
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role
	join roles on salary_roles.id_role = roles.id
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%middle%';

-- 14. ������� ����� � �������� Senior ������������
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role
	join roles on salary_roles.id_role = roles.id
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%senior%';

-- 15. ������� �������� Java �������������
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role
	join roles on salary_roles.id_role = roles.id
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%java%';

-- 16. ������� �������� Python �������������
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role
	join roles on salary_roles.id_role = roles.id
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%python%';

-- 17. ������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role 
	join roles on salary_roles.id_role = roles.id 
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%junior%' and role_title like '%python%';

--18. ������� ����� � �������� Middle JS �������������
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role 
	join roles on salary_roles.id_role = roles.id 
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%middle%' and role_title like '%java%';

--19. ������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role 
	join roles on salary_roles.id_role = roles.id 
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%senior%' and role_title like '%java%';

--  20. ������� �������� Junior QA ���������
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role 
	join roles on salary_roles.id_role = roles.id 
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%QA%' and role_title like '%junior%';

-- 21. ������� ������� �������� ���� Junior ������������
select avg(monthly_salary) from salary_roles sr 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where role_title like '%junior%';

-- 22. ������� ����� ������� JS �������������
select sum(monthly_salary) from salary_roles sr 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where role_title like '%java%';

-- 23. ������� ����������� �� QA ���������
select min(monthly_salary) from salary_roles sr 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where role_title like '%QA%';

-- 24. ������� ������������ �� QA ���������
select max(monthly_salary) from salary_roles sr 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where role_title like '%QA%';

-- 25. ������� ���������� QA ���������
select count(employee_id) from roles_employee re 
	join roles on re.role_id = roles.id 
	join employees on re.employee_id = employees.id 
	where role_title like '%QA%';

-- 26. ������� ���������� Middle ������������.
select count(employee_id) from roles_employee re 
	join roles on re.role_id = roles.id 
	join employees on re.employee_id = employees.id 
	where role_title like '%middle%';

-- 27. ������� ���������� �������������
select count(employee_id) from roles_employee re 
	join roles on re.role_id = roles.id 
	join employees on re.employee_id = employees.id 
	where role_title like '%Developer%';

-- 28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary) from roles_employee re 
	join salary_roles sr on re.role_id = sr.id_role 
	join employees on re.employee_id = employees.id
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id
	where role_title like '%Developer%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_title, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles sr on re.role_id = sr.id_role 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	order by monthly_salary;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_title, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles sr on re.role_id = sr.id_role 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where monthly_salary between 1700 and 2300
	order by monthly_salary;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_title, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles sr on re.role_id = sr.id_role 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where monthly_salary < 2300
	order by monthly_salary;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_title, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles sr on re.role_id = sr.id_role 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where monthly_salary in (1100, 1500, 2000)
	order by monthly_salary;


	
