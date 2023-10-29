-- To start it's neccesary to create the database called "Nurseries" at the PostgreSQL
CREATE DATABASE Nurseries;

-- At first, to execute this script the times that you want, it's necesary to delete the differetn tables that we are going to create, if they exist.
-- Delete the table "Zone" if it exists
DROP TABLE IF EXISTS "zone" CASCADE;

-- Delete the table "Nurseries" if it exists
DROP TABLE IF EXISTS "nurseries" CASCADE;

-- Delete the table "Company" if it exists
DROP TABLE IF EXISTS "company" CASCADE;

-- Delete the table "Task" if it exists
DROP TABLE IF EXISTS "task" CASCADE;

-- Delete the table "Employee" if it exists
DROP TABLE IF EXISTS "employee" CASCADE;

-- Delete the table "Works" if it exists
DROP TABLE IF EXISTS "works" CASCADE;

-- Delete the table "Customer" if it exists
DROP TABLE IF EXISTS "customer" CASCADE;

-- Delete the table "Product" if it exists
DROP TABLE IF EXISTS "product" CASCADE;

-- Delete the table "Buys" if it exists
DROP TABLE IF EXISTS "buys" CASCADE;

-- Delete the table "Assigned" if it exists
DROP TABLE IF EXISTS "assigned" CASCADE;

-- Create the table called "Zone"
CREATE TABLE Zone (
  id_zone SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  latitude DECIMAL(10,8) NOT NULL,
  longitude DECIMAL(11,8) NOT NULL,
  stock INTEGER NOT NULL
);

-- Adds 5 rows to the table "Zone"
INSERT INTO Zone (name, latitude, longitude, stock) VALUES ('La Guancha', 27.476775, -5.483790, 10);
INSERT INTO Zone (name, latitude, longitude, stock) VALUES ('Puerto de la Cruz', 40.416885, -10.70899, 220);
INSERT INTO Zone (name, latitude, longitude, stock) VALUES ('Teno', 10.236799, -1.713791, 300);
INSERT INTO Zone (name, latitude, longitude, stock) VALUES ('La Orotava', 27.476775, -5.483790, 10);
INSERT INTO Zone (name, latitude, longitude, stock) VALUES ('La Laguna', 40.416885, -10.70899, 220);


-- Comprobation of the table creation
SELECT * FROM Zone;

CREATE TABLE Nurseries (
  id_nursery SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  latitude DECIMAL(10,8) NOT NULL,
  longitude DECIMAL(11,8) NOT NULL,
  zone_stock INTEGER NOT NULL,
  type VARCHAR(255) NOT NULL CHECK (type IN ('Decoration', 'Plant', 'Gardener'))
);
-- Note: The type of the nursery can be "Decoration", "Plant" or "Gardener", at the relational model they are represented as a table, but
-- at this case is optimal to represent them as a check constraint.

-- Adds 5 rows to the table "Nurseries"
INSERT INTO Nurseries (name, address, latitude, longitude, zone_stock, type) VALUES ('La Troja', 'Calle Águilera', 27.476775, -5.483790, 10, 'Decoration');
INSERT INTO Nurseries (name, address, latitude, longitude, zone_stock, type) VALUES ('Pepe e Hijos', 'Calle Halcón', 40.416885, -10.70899, 220, 'Plant');
INSERT INTO Nurseries (name, address, latitude, longitude, zone_stock, type) VALUES ('Familia Martín', 'Calle Guirre', 10.236799, -1.713791, 300, 'Gardener');
INSERT INTO Nurseries (name, address, latitude, longitude, zone_stock, type) VALUES ('Espérides', 'Calle Timple', 27.476775, -5.483790, 10, 'Decoration');
INSERT INTO Nurseries (name, address, latitude, longitude, zone_stock, type) VALUES ('Plácido', 'Calle Marítima', 40.416885, -10.70899, 220, 'Plant');

-- Comprobation of the table creation
SELECT * FROM Nurseries;

-- Create the table called "Company"

CREATE TABLE Company (
  id_company SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  id_nursery INTEGER NOT NULL,
  CONSTRAINT fk_nursery
    FOREIGN KEY(id_nursery)
    REFERENCES Nurseries(id_nursery) ON DELETE CASCADE
);

-- Adds 5 rows to the table "Company"
INSERT INTO Company (name, id_nursery) VALUES ('Viver CO', 1);
INSERT INTO Company (name, id_nursery) VALUES ('Viveros Family', 2);
INSERT INTO Company (name, id_nursery) VALUES ('Dyson Start', 3);
INSERT INTO Company (name, id_nursery) VALUES ('Topurya', 4);
INSERT INTO Company (name, id_nursery) VALUES ('Vulcanozqui', 5);

-- Comprobation of the table creation
SELECT * FROM Company;

-- Create the table called "Task"

CREATE TABLE task (
  id_task SERIAL PRIMARY KEY,
  initial_date DATE NOT NULL,
  final_date DATE NOT NULL
);

-- Adds 5 rows to the table "Task"
INSERT INTO Task (initial_date, final_date) VALUES ('2020-01-01', '2020-01-02');
INSERT INTO Task (initial_date, final_date) VALUES ('2020-01-03', '2020-01-04');
INSERT INTO Task (initial_date, final_date) VALUES ('2020-01-05', '2020-01-06');
INSERT INTO Task (initial_date, final_date) VALUES ('2020-01-07', '2020-01-08');
INSERT INTO Task (initial_date, final_date) VALUES ('2020-01-09', '2020-01-10');

-- Comprobation of the table creation
SELECT * FROM Task;

-- Create the table calle "Employee"

CREATE TABLE Employee (
  id_employee SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  sales INTEGER NOT NULL,
  id_nursery INTEGER NOT NULL,
  history VARCHAR(255) NOT NULL,
  CONSTRAINT fk_nursery
    FOREIGN KEY(id_nursery)
    REFERENCES Nurseries(id_nursery) ON DELETE CASCADE
);

-- Adds 5 rows to the table "Employee"
INSERT INTO Employee (name, salary, sales, id_nursery, history) VALUES ('Paco', 1000.00, 10, 1, 'History 1');
INSERT INTO Employee (name, salary, sales, id_nursery, history) VALUES ('Pepe', 2000.00, 20, 2, 'History 2');
INSERT INTO Employee (name, salary, sales, id_nursery, history) VALUES ('María', 3000.00, 30, 3, 'History 3');
INSERT INTO Employee (name, salary, sales, id_nursery, history) VALUES ('Andrea', 4000.00, 40, 4, 'History 4');
INSERT INTO Employee (name, salary, sales, id_nursery, history) VALUES ('Cheuk', 5000.00, 50, 5, 'History 5');

-- Comprobation of the table creation
SELECT * FROM Employee;

-- Create the table called "Works"

CREATE TABLE Works (
  id_work SERIAL PRIMARY KEY,
  initial_date DATE NOT NULL,
  final_date DATE NOT NULL,
  id_zone INTEGER NOT NULL,
  id_task INTEGER NOT NULL,
  id_nursery INTEGER NOT NULL,
  id_employee INTEGER NOT NULL,
  CONSTRAINT fk_zone
    FOREIGN KEY(id_zone)
    REFERENCES Zone(id_zone) ON DELETE CASCADE,
  CONSTRAINT fk_task
    FOREIGN KEY(id_task)
    REFERENCES Task(id_task) ON DELETE CASCADE,
  CONSTRAINT fk_nursery
    FOREIGN KEY(id_nursery)
    REFERENCES Nurseries(id_nursery) ON DELETE CASCADE,
  CONSTRAINT fk_employee
    FOREIGN KEY(id_employee)
    REFERENCES Employee(id_employee) ON DELETE CASCADE
);

-- Adds 5 rows to the table "Works"
INSERT INTO Works(initial_date, final_date, id_zone, id_task, id_nursery, id_employee) VALUES ('2020-01-01', '2020-01-02', 1, 1, 1, 1);
INSERT INTO Works(initial_date, final_date, id_zone, id_task, id_nursery, id_employee) VALUES ('2020-01-03', '2020-01-04', 2, 2, 2, 2);
INSERT INTO Works(initial_date, final_date, id_zone, id_task, id_nursery, id_employee) VALUES ('2020-01-05', '2020-01-06', 3, 3, 3, 3);
INSERT INTO Works(initial_date, final_date, id_zone, id_task, id_nursery, id_employee) VALUES ('2020-01-07', '2020-01-08', 4, 4, 4, 4);
INSERT INTO Works(initial_date, final_date, id_zone, id_task, id_nursery, id_employee) VALUES ('2020-01-09', '2020-01-10', 5, 5, 5, 5);

-- Comprobation of the table creation
SELECT * FROM Works;

-- Create the table called "Customer"

CREATE TABLE Customer (
  id_customer SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  amount_spent INTEGER NOT NULL,
  tajinaste_plus BOOLEAN NOT NULL,
  fidelity_card_date DATE,
  bonification BOOLEAN CHECK (tajinaste_plus = TRUE AND bonification = TRUE OR tajinaste_plus = FALSE AND bonification = FALSE)
);

-- Adds 5 rows to the table "Customer"
INSERT INTO Customer (name, amount_spent, tajinaste_plus, fidelity_card_date, bonification) VALUES ('Samuel', 100, TRUE, '2020-01-01', TRUE);
INSERT INTO Customer (name, amount_spent, tajinaste_plus, fidelity_card_date, bonification) VALUES ('Antonio', 200, TRUE, '2020-01-02', TRUE);
INSERT INTO Customer (name, amount_spent, tajinaste_plus, fidelity_card_date, bonification) VALUES ('Eva', 300, TRUE, '2020-01-03', TRUE);
INSERT INTO Customer (name, amount_spent, tajinaste_plus, fidelity_card_date, bonification) VALUES ('Domingo', 400, FALSE, NULL, FALSE);
INSERT INTO Customer (name, amount_spent, tajinaste_plus, fidelity_card_date, bonification) VALUES ('Marcial', 500, FALSE, NULL, FALSE);

-- Comprobation of the table creation
SELECT * FROM Customer;

-- Create the table called "Product"

CREATE TABLE Product (
  id_product SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock INTEGER NOT NULL
);

-- Adds 5 rows to the table "Product"
INSERT INTO Product (name, price, stock) VALUES ('Sufatos', 100.00, 10);
INSERT INTO Product (name, price, stock) VALUES ('Guano', 200.00, 20);
INSERT INTO Product (name, price, stock) VALUES ('Fertilizante', 300.00, 30);
INSERT INTO Product (name, price, stock) VALUES ('Turba', 400.00, 40);
INSERT INTO Product (name, price, stock) VALUES ('Sacho', 500.00, 50);

-- Comprobation of the table creation
SELECT * FROM Product;

-- Create the table called "Buys"

CREATE TABLE Buys (
  id_buy SERIAL PRIMARY KEY,
  amount INTEGER NOT NULL,
  id_employee INTEGER NOT NULL,
  id_customer INTEGER NOT NULL,
  id_product INTEGER NOT NULL,
  CONSTRAINT fk_employee
    FOREIGN KEY(id_employee)
    REFERENCES Employee(id_employee) ON DELETE CASCADE,
  CONSTRAINT fk_customer
    FOREIGN KEY(id_customer)
    REFERENCES Customer(id_customer) ON DELETE CASCADE,
  CONSTRAINT fk_product
    FOREIGN KEY(id_product)
    REFERENCES Product(id_product) ON DELETE CASCADE
);

-- Adds 5 rows to the table "Buys"
INSERT INTO Buys (amount, id_employee, id_customer, id_product) VALUES (100, 1, 1, 1);
INSERT INTO Buys (amount, id_employee, id_customer, id_product) VALUES (200, 2, 2, 2);
INSERT INTO Buys (amount, id_employee, id_customer, id_product) VALUES (300, 3, 3, 3);
INSERT INTO Buys (amount, id_employee, id_customer, id_product) VALUES (400, 4, 4, 4);
INSERT INTO Buys (amount, id_employee, id_customer, id_product) VALUES (500, 5, 5, 5);

-- Comprobation of the table creation
SELECT * FROM Buys;

-- Create the table called "Assigned"

CREATE TABLE Assigned (
  id_assigned SERIAL PRIMARY KEY,
  id_product INTEGER NOT NULL,
  id_nursery INTEGER NOT NULL,
  id_zone INTEGER NOT NULL,
  CONSTRAINT fk_product
    FOREIGN KEY(id_product)
    REFERENCES Product(id_product) ON DELETE CASCADE,
  CONSTRAINT fk_nursery
    FOREIGN KEY(id_nursery)
    REFERENCES Nurseries(id_nursery) ON DELETE CASCADE,
  CONSTRAINT fk_zone  
    FOREIGN KEY(id_zone)
    REFERENCES Zone(id_zone) ON DELETE CASCADE
);

-- Adds 5 rows to the table "Assigned"
INSERT INTO Assigned (id_product, id_nursery, id_zone) VALUES (1, 1, 1);
INSERT INTO Assigned (id_product, id_nursery, id_zone) VALUES (2, 2, 2);
INSERT INTO Assigned (id_product, id_nursery, id_zone) VALUES (3, 3, 3);
INSERT INTO Assigned (id_product, id_nursery, id_zone) VALUES (4, 4, 4);
INSERT INTO Assigned (id_product, id_nursery, id_zone) VALUES (5, 5, 5);

-- Comprobation of the table creation
SELECT * FROM Assigned;

-- Examples of the operation "DELETE" at the different tables of the database
DELETE FROM Nurseries WHERE name = 'La Troja';

-- Comprobation of the "DELETE" operation
SELECT * FROM Nurseries;

-- Another example of the operation "DELETE" at the different tables of the database
DELETE FROM Zone WHERE stock >= 200;

-- Comprobation of the "DELETE" operation
SELECT * FROM Zone;