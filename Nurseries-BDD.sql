-- Delete the table "Zone" if it exists
DROP TABLE IF EXISTS "zone";

-- Delete the table "Company" if it exists
DROP TABLE IF EXISTS "company";

-- Delete the table "Plant" if it exists
DROP TABLE IF EXISTS "plant";

-- Delete the table "Gardener" if it exists
DROP TABLE IF EXISTS "gardener";

-- Delete the table "Decoration" if it exists
DROP TABLE IF EXISTS "decoration";

-- Delete the table "Nurseries" if it exists
DROP TABLE IF EXISTS "nurseries";

-- -- Crea la base de datos "Nurseries" si no existe
-- CREATE DATABASE IF NOT EXISTS Nurseries WITH ENCODING='UTF8' TEMPLATE template0;


-- Nota: Tener cuidado con la coma al final de los atributos de la tabla, 
-- ya que se genera un error ante esto
CREATE TABLE Nurseries (
  id_nursery SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  latitude DECIMAL(10,8) NOT NULL,
  longitude DECIMAL(11,8) NOT NULL
  -- zone_stock INTEGER NOT NULL,
  -- type VARCHAR(255) NOT NULL
  -- FOREIGN KEY (zone_stock) REFERENCES Zone(zone_stock),
  -- FOREIGN KEY (type) REFERENCES Plant(name),
  -- FOREIGN KEY (type) REFERENCES Gardener(name),
  -- FOREIGN KEY (type) REFERENCES Decoration(name)
);

-- Adds 3 rows to the table "Nurseries"
INSERT INTO Nurseries (name, address, latitude, longitude) VALUES ('Nursery 1', 'Calle 1', 27.476775, -5.483790);
INSERT INTO Nurseries (name, address, latitude, longitude) VALUES ('Nursery 2', 'Calle 2', 40.416885, -10.70899);
INSERT INTO Nurseries (name, address, latitude, longitude) VALUES ('Nursery 3', 'Calle 3', 10.236799, -1.713791);

-- Comprobation of the table creation
SELECT * FROM Nurseries;

-- Create the table called "Zone"
CREATE TABLE Zone (
  id_zone SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  zone_stock INTEGER NOT NULL,
  latitude DECIMAL(10,8) NOT NULL,
  longitude DECIMAL(11,8) NOT NULL,
  stock INTEGER NOT NULL,
  type INTEGER NOT NULL
  -- FOREIGN KEY (stock) REFERENCES Zone(zone_stock),
  -- FOREIGN KEY (type) REFERENCES Nurseries(zone_stock)
);

-- Adds 3 rows to the table "Zone"
INSERT INTO Zone (name, zone_stock, latitude, longitude, stock, type) VALUES ('Zone 1', 1, 27.476775, -5.483790, 1, 1);
INSERT INTO Zone (name, zone_stock, latitude, longitude, stock, type) VALUES ('Zone 2', 2, 40.416885, -10.70899, 2, 2);
INSERT INTO Zone (name, zone_stock, latitude, longitude, stock, type) VALUES ('Zone 3', 3, 10.236799, -1.713791, 3, 3);

-- Comprobation of the table creation
SELECT * FROM Zone;

-- Create the table called "Company"

CREATE TABLE Company (
  id_company SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  id_nursery INTEGER NOT NULL
  -- FOREIGN KEY (id_nursery) REFERENCES Nurseries(id_nursery)
);

-- Adds 3 rows to the table "Company"
INSERT INTO Company (name, id_nursery) VALUES ('Company 1', 1);
INSERT INTO Company (name, id_nursery) VALUES ('Company 2', 2);
INSERT INTO Company (name, id_nursery) VALUES ('Company 3', 3);

-- Comprobation of the table creation
SELECT * FROM Company;

-- Create the table called "Plant"

CREATE TABLE Plant (
  id_plant SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  id_nursery INTEGER NOT NULL
  -- FOREIGN KEY (id_nursery) REFERENCES Nurseries(id_nursery)
);

-- Adds 3 rows to the table "Plant"
INSERT INTO Plant (name, id_nursery) VALUES ('Plant 1', 1);
INSERT INTO Plant (name, id_nursery) VALUES ('Plant 2', 2);
INSERT INTO Plant (name, id_nursery) VALUES ('Plant 3', 3);

-- Comprobation of the table creation
SELECT * FROM Plant;

-- Create the table called "Gardener"

CREATE TABLE Gardener (
  id_gardener SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  id_nursery INTEGER NOT NULL
  -- FOREIGN KEY (id_nursery) REFERENCES Nurseries(id_nursery)
);

-- Adds 3 rows to the table "Gardener"
INSERT INTO Gardener (name, id_nursery) VALUES ('Gardener 1', 1);
INSERT INTO Gardener (name, id_nursery) VALUES ('Gardener 2', 2);
INSERT INTO Gardener (name, id_nursery) VALUES ('Gardener 3', 3);

-- Comprobation of the table creation
SELECT * FROM Gardener;

-- Create the table called "Decoration"

DROP TABLE IF EXISTS "Decoration";

CREATE TABLE Decoration (
  id_decoration SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  id_nursery INTEGER NOT NULL
  -- FOREIGN KEY (id_nursery) REFERENCES Nurseries(id_nursery)
);

-- Adds 3 rows to the table "Decoration"
INSERT INTO Decoration (name, id_nursery) VALUES ('Decoration 1', 1);
INSERT INTO Decoration (name, id_nursery) VALUES ('Decoration 2', 2);
INSERT INTO Decoration (name, id_nursery) VALUES ('Decoration 3', 3);

-- Comprobation of the table creation
SELECT * FROM Decoration;