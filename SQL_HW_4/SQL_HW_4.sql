CREATE TABLE roles(
    id SERIAL PRIMARY KEY,
    role_title Varchar(30) NOT NULL
    );

   INSERT INTO roles(id, role_title)
    VALUES (default, 'Massage therapist'),
           (default, 'Bookseller'),
           (default, 'Printer repairman'),
           (default, 'Salesman '),
           (default, 'Designer'),
           (default, 'Wedding Costume Salesman'),
           (default, 'Tailor'),
           (default, 'Tyre fitter'),
           (default, 'Nail service technician'),
           (default, 'Sports goods consultant'),
           (default, 'Sculptor'),
           (default, 'Sales Manager');
      
          
CREATE TABLE salary(
    id SERIAL PRIMARY KEY,
    monthly_salary INT NOT NULL
    );
   
   INSERT INTO salary(id, monthly_salary)
    VALUES (default, 1500),
           (default, 500),
           (default, 1100),
           (default, 450),
           (default, 1700),
           (default, 600),
           (default, 1450),
           (default, 1600),
           (default, 1300),
           (default, 700),
           (default, 2000),
           (default, 1190);

          
   CREATE TABLE roles_salary(
    id SERIAL PRIMARY KEY,
    id_role INT NOT NULL,
    id_salary INT NOT NULL,
    FOREIGN KEY (id_salary)
    REFERENCES salary(id),
    FOREIGN KEY (id_role)     
    REFERENCES  roles(id)
    );
   
   INSERT INTO roles_salary(id, id_role, id_salary)
    VALUES (default, 1, 1),
           (default, 2, 2),
           (default, 3, 3),
           (default, 4, 4),
           (default, 5, 5),
           (default, 6, 6),
           (default, 7, 7),
           (default, 8, 8),
           (default, 9, 9),
           (default, 10, 10),
           (default, 11, 11),
           (default, 12, 12);
   
   
   CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    employee_name Varchar(30) NOT NULL
    );
   
INSERT INTO employees(id, employee_name)
    VALUES (default, 'Rowan Atkinson'),
            (default, 'Richard Attenborough'),
            (default, 'Felix Aylmer'),
            (default, 'Christian Bale'),
            (default, 'Stanley Baker'),
            (default, 'Leslie Banks'),
            (default, 'Ronnie Barker'),
            (default, 'Alan Bates'),
            (default, 'Brian Blessed'),
            (default, 'Dirk Bogarde'),
            (default, 'Kenneth Branagh'),
            (default, 'Jim Broadbent'),
            (default, 'Jack Buchanan'),
            (default, 'Michael Caine'),
            (default, 'George Cole'),
            (default, 'Ronald Colman'),
            (default, 'Sean Connery'),
            (default, 'Tom Courtenay'),
            (default, 'Daniel Craig'),
            (default, 'Jeck Dilon'),
            (default, 'Danik Vasilev'),
            (default, 'Michael Craig'),
            (default, 'Roman Anisov'),
            (default, 'Kapitan Jeck');
        
           
           
   CREATE TABLE employees_roles(
    id SERIAL PRIMARY KEY,
    id_role INT NOT NULL,
    id_employee INT NOT NULL,
    FOREIGN KEY (id_employee)
    REFERENCES employees(id),
    FOREIGN KEY (id_role)     
    REFERENCES  roles(id)
    );
   
INSERT INTO employees_roles(id_role, id_employee)
    VALUES (1,1),
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
           (12,12);
  
  
   CREATE TABLE Service(
    id SERIAL PRIMARY KEY,
    service_title Varchar(30) NOT NULL,
    price INT NOT NULL
    );
   
   INSERT INTO Service(id, service_title, price)
    VALUES (default, 'Massage salon', 200),
           (default, 'Bookstore', 70),
           (default, 'print service', 110),
           (default, 'Paper Shop', 50),
           (default, 'Covers to order', 300),
           (default, 'Wedding Salon', 450),
           (default, 'Sewing Costumes', 1000),
           (default, 'Custom Sculptures', 1500),
           (default, 'Tyre fitting shop', 500),
           (default, 'Nail Salon', 100),
           (default, 'Shop sports goods', 250);
           
   
   
   CREATE TABLE materials(
    id SERIAL PRIMARY KEY,
    material_title Varchar(30) NOT NULL,
    amount INT NOT NULL,
    price INT NOT NULL
    );
   
   INSERT INTO materials(id, material_title, amount, price)
    VALUES (default, 'Massage oil', 1000, 20000), 
           (default, 'Books', 700, 49000),
           (default, 'Printer ink  ', 900, 70000),
           (default, 'Paper ', 2000, 10000),
           (default, 'Leather', 200, 60000),
           (default, 'Suits', 499, 30000),
           (default, 'Fabric', 1000, 7000),
           (default, 'Marble', 500, 45000),
           (default, 'Winter tires', 450, 21500),
           (default, 'Nail polish', 390, 11500),
           (default, 'Sporting Goods', 3000, 80000);
           
           
   CREATE TABLE chaim(
    id SERIAL PRIMARY KEY,
    service_id INT NOT NULL,
    employee_id INT NOT NULL,
    material_id INT NOT NULL,
    chaim_date DATE DEFAULT CURRENT_TIMESTAMP, 
    sales_manager INT NOT NULL,
    FOREIGN key (employee_id)
    REFERENCES employees(id),
    FOREIGN key (sales_manager)
    REFERENCES employees(id),
    FOREIGN KEY (service_id)
    REFERENCES Service(id),
    FOREIGN KEY (material_id)     
    REFERENCES  materials(id)
    );
   
   INSERT INTO chaim(id, service_id, employee_id, material_id, sales_manager)
    VALUES (default, 1, 1, 1, 12),
           (default, 2, 2, 2, 13),
           (default, 3, 3, 3, 14),
           (default, 4, 4, 4, 15),
           (default, 5, 5, 5, 16),
           (default, 6, 6, 6, 17),
           (default, 7, 7, 7, 18),
           (default, 8, 8, 8, 19),
           (default, 9, 9, 9, 20),
           (default, 10, 10, 10, 21),
           (default, 11, 11, 11, 22); 
                 
    
    CREATE TABLE Suppliers(
    id SERIAL PRIMARY KEY,
    name Varchar(30) NOT NULL);
    
   INSERT INTO Suppliers(id, name)
    VALUES (default, 'Bob Pettit'),
           (default, 'Oscar Robertson'),
           (default, 'David Robinson'),
           (default, 'Dennis Rodman'),
           (default, 'Bill Russell'),
           (default, 'Jerry Sloan'),
           (default, 'Yao Ming'),
           (default, 'Lenny Wilkens'),
           (default, 'Arthur Askey'),
           (default, 'George Arliss');
          
          ALTER TABLE Materials
ALTER COLUMN  suplier_id INT NOT null,
ADD CONSTRAINT Materials FOREIGN KEY (suplier_id) REFERENCES Suppliers(id);

   																			
   
   
   
   