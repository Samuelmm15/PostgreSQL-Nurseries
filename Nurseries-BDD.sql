-- Create the database

CREATE DATABASE Nurseries
ENCODING 'UTF8'
TEMPLATE template0;

-- Create the table called "Nurseries"

DROP TABLE IF EXISTS "Nurseries";

-- Nota: Tener cuidado con la coma al final de los atributos de la tabla, 
-- ya que se genera un error ante esto
CREATE TABLE Nurseries (
  id_nursery SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  latitude DECIMAL(10,8) NOT NULL,
  longitude DECIMAL(11,8) NOT NULL,
  zone_stock INTEGER NOT NULL,
  type VARCHAR(255) NOT NULL,
  FOREIGN KEY (zone_stock) REFERENCES Zone(zone_stock),
  FOREIGN KEY (type) REFERENCES Plant(name),
  FOREIGN KEY (type) REFERENCES Gardener(name),
  FOREIGN KEY (type) REFERENCES Decoration(name)
);

-- Comprobation of the table creation
SELECT * FROM Nurseries;

-- Create the table called "Zone"

DROP TABLE IF EXISTS "Zone";

CREATE TABLE Zone (
  id_zone SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  zone_stock INTEGER NOT NULL,
  latitude DECIMAL(10,8) NOT NULL,
  longitude DECIMAL(11,8) NOT NULL,
  stock INTEGER NOT NULL,
  type INTEGER NOT NULL,
  FOREIGN KEY (stock) REFERENCES Zone(zone_stock),
  FOREIGN KEY (type) REFERENCES Nurseries(zone_stock)
);

-- Comprobation of the table creation
SELECT * FROM Zone;

-- Create the table called "Company"

DROP TABLE IF EXISTS "Company";

CREATE TABLE Company (
  id_company SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  id_nursery INTEGER NOT NULL,
  FOREIGN KEY (id_nursery) REFERENCES Nurseries(id_nursery)
);

-- Comprobation of the table creation
SELECT * FROM Company;

-- Create the table called "Plant"

DROP TABLE IF EXISTS "Plant";

CREATE TABLE Plant (
  id_plant SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  id_nursery INTEGER NOT NULL,
  FOREIGN KEY (id_nursery) REFERENCES Nurseries(id_nursery)
);

-- Comprobation of the table creation
SELECT * FROM Plant;

-- Create the table called "Gardener"

DROP TABLE IF EXISTS "Gardener";

CREATE TABLE Gardener (
  id_gardener SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  id_nursery INTEGER NOT NULL,
  FOREIGN KEY (id_nursery) REFERENCES Nurseries(id_nursery)
);

-- Comprobation of the table creation
SELECT * FROM Gardener;

-- Create the table called "Decoration"

DROP TABLE IF EXISTS "Decoration";

CREATE TABLE Decoration (
  id_decoration SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  id_nursery INTEGER NOT NULL,
  FOREIGN KEY (id_nursery) REFERENCES Nurseries(id_nursery)
);