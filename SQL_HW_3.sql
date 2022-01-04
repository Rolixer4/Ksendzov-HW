		  
-- HW 3 START		  

-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name en, monthly_salary ms from employee_salary
	join employees on employee_salary.salary_id = employees.id
	join salary on salary_id = salary.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary from employee_salary
	join employees on employee_salary.salary_id = employees.id
	join salary on salary_id = salary.id
	where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary from salary s 
	left join employee_salary es on s.id = es.employee_id 
	where monthly_salary is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employee_name, monthly_salary from employee_salary
	join employees on employee_salary.salary_id = employees.id
	join salary on salary_id = salary.id
	where monthly_salary < 2000 and employee_name is null;

-- 5. Найти всех работников кому не начислена ЗП.
select employee_name, monthly_salary from employee_salary es 
	join employees on es.employee_id = employees.id
	join salary on es.salary_id =  salary.id
	where monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.
select employee_name, role_title from roles_employee re
	join employees on re.employee_id = employees.id 
	join roles on re.role_id = roles.id;

-- 7. Вывести имена и должность только Java разработчиков
select employee_name, role_title from roles_employee re 
	join employees on re.employee_id = employees.id 
	join roles on re.role_id = roles.id 
	where role_title like '%java%';

-- 8. Вывести имена и должность только Python разработчиков.
select employee_name, role_title from roles_employee re 
	join employees on re.employee_id = employees.id 
	join roles on re.role_id = roles.id
	where role_title like '%python%';

-- 9. Вывести имена и должность всех QA инженеров.
select employee_name, role_title from roles_employee re 
	join employees on re.employee_id = employees.id 
	join roles on re.role_id = roles.id 
	where role_title like '%QA%'
	
-- 10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_title from roles_employee re 
	join employees on re.employee_id = employees.id 
	join roles on re.role_id = roles.id
	where role_title like '%QA%' and role_title like '%manual%';

-- 11. Вывести имена и должность автоматизаторов QA
select employee_name, role_title from roles_employee re 
	join employees on re.employee_id = employees.id 
	join roles on re.role_id = roles.id
	where role_title like '%QA%' and role_title like '%automation%';

-- 12. Вывести имена и зарплаты Junior специалистов
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role
	join roles on salary_roles.id_role = roles.id
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role
	join roles on salary_roles.id_role = roles.id
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role
	join roles on salary_roles.id_role = roles.id
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%senior%';

-- 15. Вывести зарплаты Java разработчиков
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role
	join roles on salary_roles.id_role = roles.id
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%java%';

-- 16. Вывести зарплаты Python разработчиков
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role
	join roles on salary_roles.id_role = roles.id
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role 
	join roles on salary_roles.id_role = roles.id 
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%junior%' and role_title like '%python%';

--18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role 
	join roles on salary_roles.id_role = roles.id 
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%middle%' and role_title like '%java%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role 
	join roles on salary_roles.id_role = roles.id 
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%senior%' and role_title like '%java%';

--  20. Вывести зарплаты Junior QA инженеров
select employee_name, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles on re.role_id = salary_roles.id_role 
	join roles on salary_roles.id_role = roles.id 
	join salary on salary_roles.id_salary = salary.id 
	where role_title like '%QA%' and role_title like '%junior%';

-- 21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary) from salary_roles sr 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where role_title like '%junior%';

-- 22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) from salary_roles sr 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where role_title like '%java%';

-- 23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) from salary_roles sr 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where role_title like '%QA%';

-- 24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary) from salary_roles sr 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where role_title like '%QA%';

-- 25. Вывести количество QA инженеров
select count(employee_id) from roles_employee re 
	join roles on re.role_id = roles.id 
	join employees on re.employee_id = employees.id 
	where role_title like '%QA%';

-- 26. Вывести количество Middle специалистов.
select count(employee_id) from roles_employee re 
	join roles on re.role_id = roles.id 
	join employees on re.employee_id = employees.id 
	where role_title like '%middle%';

-- 27. Вывести количество разработчиков
select count(employee_id) from roles_employee re 
	join roles on re.role_id = roles.id 
	join employees on re.employee_id = employees.id 
	where role_title like '%Developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) from roles_employee re 
	join salary_roles sr on re.role_id = sr.id_role 
	join employees on re.employee_id = employees.id
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id
	where role_title like '%Developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_title, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles sr on re.role_id = sr.id_role 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	order by monthly_salary;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_title, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles sr on re.role_id = sr.id_role 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where monthly_salary between 1700 and 2300
	order by monthly_salary;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_title, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles sr on re.role_id = sr.id_role 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where monthly_salary < 2300
	order by monthly_salary;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_title, monthly_salary from roles_employee re 
	join employees on re.employee_id = employees.id 
	join salary_roles sr on re.role_id = sr.id_role 
	join roles on sr.id_role = roles.id 
	join salary on sr.id_salary = salary.id 
	where monthly_salary in (1100, 1500, 2000)
	order by monthly_salary;

-- ЗАНЯТИЕ 4

create table factories(
 id serial primary key,
 factory_title varchar(50)
);

insert into factories(factory_title)
values ('Hanwai'),
    ('Kenling'),
    ('Dongguan'),
    ('Abis'),
    ('Foxconn');
   
select * from factories;

create table mobile_phones(
 id serial primary key,
 brand_id int,
 product_model varchar(40),
 price int,
 factory_id int
);

insert into mobile_phones(brand_id, product_model, price, factory_id)
values (2, 'iphone_X', 600, 5),
    (2, 'iphone_11', 700, 4),
    (1, 'A51', 400, 1),
    (3, 'P40', 600, 5),
    (1, 's21', 1500, 5),
    (3, 'H200', 300, 3),
    (2, 'iphone_12', 1000, 5),
    (3, 'Q15', 400, 2),
    (1, 'P50', 900, 1),
    (2, 'iphone_13', 1800, 4),
    (1, 'S22', 1300, 3),
    (1, 'A31', 200, 5);
   
 create table monitors(
	 id serial primary key,
	 brand_id int,
	 product_model varchar(40),
	 price int,
	 factory_id int
	);
insert into monitors(brand_id, product_model, price, factory_id)
values (2, 'P300', 100, 1),
    (2, 'A320', 200, 3),
    (1, 'NV1000_Ultra', 450, 5),
    (3, 'P400_super_Amolet', 240, 3),
    (1, 'AV_1000', 400, 4),
    (3, 'UKV_100', 900, 2),
    (2, 'KV-200', 2000, 2),
    (3, 'IPS_1980', 550, 1),
    (1, 'IPS_4k', 630, 4),
    (2, 'IPS_8k_1c', 1200, 3),
    (1, 'TFTN_1500', 1300, 2),
    (1, 'BioPixel_2', 12000, 5);

create table scooters(
 id serial primary key,
 brand_id int,
 product_model varchar(40),
 price int,
 factory_id int
);   
    
insert into scooters(brand_id, product_model, price, factory_id)
values (2, 'A-P300', 2000, 2),
    (2, 'B-A320', 280, 4),
    (1, 'C-NV1000_Ultra', 650, 1),
    (3, 'D_P400_super_Amolet', 2400, 2),
    (1, 'E-AV_1000', 1100, 5),
    (3, 'F-UKV_100', 2300, 3),
    (2, 'G-KV-200', 200, 1),
    (3, 'H-IPS_1980', 530, 4),
    (1, 'I-IPS_4k', 6300, 2),
    (2, 'J-IPS_8k_1c', 120, 1),
    (1, 'K-TFTN_1500', 130, 5),
    (1, 'O-BioPixel_2', 1200, 3);
   
create table orders(
 id serial primary key,
 brand_id int,
 product_model varchar(40),
 price int,
 pcs int
);

insert into orders(brand_id, product_model, price, pcs)
values (2, 'iphone_13', 1800, 1),
    (2, 'B-A320', 280, 2),
    (1, 'IPS_4k', 630, 1);

   create table brands(
 id serial primary key,
 brand_title varchar(50)
);

insert into brands(brand_title)
values ('Samsung'),
    ('Apple'),
    ('Huawei'),
    ('HP'),
    ('Koogu');
--=================================================================
select cast(brand_id as varchar), price from scooters 
union all
select product_model, factory_id from monitors;
--=================================================================
create table phones_apple(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
);


insert into phones_apple(model, ram, front_camera, price)
values ('X', 4, 8, 400),
    ('11', 6, 10, 700),
    ('12', 8, 12, 1000),
    ('7', 4, 12, 400),
    ('XR', 6, 12, 800),
    ('XS', 6, 12, 1000),
    ('13', 6, 12, 1500),
    ('8', 4, 12, 700),
    ('SE 2020', 6, 8, 700);

   
create table phones_samsung(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
);

insert into phones_samsung(model, ram, front_camera, price)
values ('A50', 6, 10, 300),
    ('A50', 8, 10, 400),
    ('A52', 8, 16, 500),
    ('S20', 8, 24, 1500),
    ('S21', 8, 12, 1000),
    ('S22', 6, 12, 1200),
    ('A71', 6, 12, 1200),
    ('A91', 4, 12, 1900),
    ('A57', 8, 8, 900),
    ('A32', 8, 4, 800),
    ('A33', 8, 5, 750),
    ('A43', 8, 5, 850)
 ;

create table samsung_orders(
 id serial primary key,
 phone_id int
);

insert into samsung_orders(phone_id)
values (2),
    (5),
    (1),
    (7),
    (10);
--====================================================================
select * from phones_samsung;
select * from phones_apple;

select * from phones_apple
where price < (select avg(price) from phones_samsung);
   
select * from phones_apple 
where price in (select price from phones_samsung where price < 800);

select * from phones_apple 
where price < all(select price from phones_samsung where price < 1000);

select * from phones_apple 
where price = all(select price from phones_samsung where price < 1000);
   
select * from phones_apple 
where price != any(select price from phones_samsung where price > 1000);




