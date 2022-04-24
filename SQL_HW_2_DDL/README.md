##SQL_DDL
##Первая часть.

###Таблица employees

1. Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null


     CREATE TABLE employees_1(
     id SERIAL PRIMARY KEY,
     employee_name VARCHAR(50)UNIQUE NOT NULL
     );

2. Наполнить таблицу employee 70 строками.
  

    INCERT INTO employees_1(employee_name)
    VALUES ('Rowan Atkinson'),
    ('Richard Attenborough'),
    ('Felix Aylmer'),
    ('Christian Bale'),
    ('Stanley Baker'),
    ('Leslie Banks'),
    ('Ronnie Barker'),
    ('Alan Bates'),
    ('Brian Blessed'),
    ('Dirk Bogarde'),
    ('Kenneth Branagh'),
    ('Jim Broadbent'),
    ('Jack Buchanan'),
    ('Michael Caine'),
    ('George Cole'),
    ('Ronald Colman'),
    ('Sean Connery'),
    ('Tom Courtenay'),
    ('Daniel Craig'),
    ('Michael Craig'),
    ('Peter Cushing'),
    ('David Abramchuk'),
    ('Harry Potter'),
    ('Timothy Dalton'),
    ('Daniel Day-Lewis'),
    ('Denholm Elliott'),
    ('Rupert Everett'),
    ('David Farrar'),
    ('Peter Finch'),
    ('Andrey Kozlov'),
    ('Alexander Gorbachev'),
    ('Colin Firth'),
    ('Valentina Enashko'),
    ('Stewart Granger'),
    ('Cary Grant'),
    ('Hugh Grant'),
    ('John Gregson'),
    ('Alec Guinness'),
    ('Tony Hancock'),
    ('Cedric Hardwicke'),
    ('Tonny Stark'),
    ('Robertson Hare'),
    ('Piter Parker'),
    ('Gordon Harker'),
    ('Michael Jordan'),
    ('Lebron Jemes'),
    ('Kriss Paul'),
    ('Carmelo Anthony'),
    ('Paul Arizin'),
    ('Charles Barkley'),
    ('Rick Barry'),
    ('Elgin Baylor'),
    ('Bill Bradley'),
    ('Kevin Durant'),
    ('Tim Duncan'),
    ('Julius Erving'),
    ('Allen Iverson'),
    ('Alonzo Mourning'),
    ('Dirk Nowitzki'),
    ('Don Nelson'),
    ('Bob Pettit'),
    ('Oscar Robertson'),
    ('David Robinson'),
    ('Dennis Rodman'),
    ('Bill Russell'),
    ('Jerry Sloan'),
    ('Yao Ming'),
    ('Lenny Wilkens'),
    ('Arthur Askey'),
    ('George Arliss');



###Таблица salary

3. Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null

       CREATE TABLE salary_2( 
       id SERIAL PRIMARY KEY,
       monthly_salary INT NOT NULL
       );

5. Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500


    INCERT INTO salary_2(monthly_salary)
    VALUES (1000),
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

###Таблица employee_salary

5. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null


    CREATE TABLE employee_salary_1(
    id SERIAL PRIMARY KEY,
    employee_id INT NOT NULL UNIQUE,
    salary_id INT NOT NULL         
    );

6. Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id


    INCERT INTO employee_salary_1(employee_id, salary_id)
    VALUES (7, 16),
    (8, 13),
    (25, 1),
    (33, 5),
    (44, 12),
    (30, 3),
    (39, 16),
    (9, 2),
    (69, 14),
    (66, 13),
    (10, 16),
    (11, 15),
    (22, 13),
    (59, 16),
    (58, 9),
    (57, 7),
    (53, 5),
    (50, 11),
    (48, 9),
    (47, 7),
    (49, 1),
    (46, 2),
    (56, 4),
    (61, 6),
    (62, 8),
    (63, 10),
    (23, 12),
    (24, 14),
    (45, 16),
    (68, 15),
    (111, 3),
    (109, 1),
    (108, 14),
    (107, 16),
    (777, 13),
    (90, 2),
    (100, 7),
    (110, 3),
    (120, 9),
    (130, 4);

###Таблица roles

7. Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique


    CREATE TABLE roles_1(
    id SERIAL PRIMARY KEY,
    role_name INT UNIQUE NOT NULL
    );
8. Поменять тип столба role_name с int на varchar(30)

   `ALTER COLUMN role_name TYPE VARCHAR(30); --USING role_name::INT;`

9. Наполнить таблицу roles 20 строками:


    INSERT INTO roles_1(role_name)
    VALUES ('Junior Python developer'),
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

###Таблица roles_employee

10. Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)


    CREATE TABLE roles_employee_1(
    id SERIAL PRIMARY KEY,
    employee_id INT NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (employee_id)
    REFERENCES employees_1(id),
    FOREIGN KEY (role_id)     
    REFERENCES  roles_1(id)
    );

11. Наполнить таблицу roles_employee 40 строками:

   
    INSERT INTO roles_employee_1(employee_id, role_id)
            VALUES (70, 1),
                   (69, 2),
                   (1, 3),
                   (68, 4),
                   (2, 5),
                   (67, 6),
                   (3, 7),
                   (66, 8),
                   (4, 9),
                   (65, 10),
                   (5, 11),
                   (64, 12),
                   (6, 13),
                   (63, 14),
                   (7, 15),
                   (62, 16),
                   (8, 17),
                   (61, 18),
                   (9, 19),
                   (60, 20),
                   (10, 16),
                   (59, 3),
                   (11, 4),
                   (58, 19),
                   (12, 1),
                   (57, 13),
                   (13, 17),
                   (56, 15),
                   (14, 11),
                   (55, 10),
                   (15, 9),
                   (54, 1),
                   (16, 5),
                   (53, 6),
                   (17, 7),
                   (52, 3),
                   (18, 2),
                   (51, 8),
                   (19, 5),
                   (20, 1);
    

    
