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

-- Create the table called "Zone"
CREATE TABLE Zone (
  id_zone SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  latitude DECIMAL(10,8) NOT NULL,
  longitude DECIMAL(11,8) NOT NULL,
  stock INTEGER NOT NULL
);

-- Adds 3 rows to the table "Zone"
INSERT INTO Zone (name, latitude, longitude, stock) VALUES ('Zone 1', 27.476775, -5.483790, 10);
INSERT INTO Zone (name, latitude, longitude, stock) VALUES ('Zone 2', 40.416885, -10.70899, 220);
INSERT INTO Zone (name, latitude, longitude, stock) VALUES ('Zone 3', 10.236799, -1.713791, 300);

-- Comprobation of the table creation
SELECT * FROM Zone;

-- Nota: Tener cuidado con la coma al final de los atributos de la tabla, 
-- ya que se genera un error ante esto
-- Nota: Hay que tener en cuenta que fue un fallo no poner la clave ajena como la clave primaria de la tabla, tener cuidado con este hecho.
CREATE TABLE Nurseries (
  id_nursery SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  latitude DECIMAL(10,8) NOT NULL,
  longitude DECIMAL(11,8) NOT NULL,
  zone_stock INTEGER NOT NULL,
  type VARCHAR(255) NOT NULL CHECK (type IN ('Decoration', 'Plant', 'Gardener'))
);
-- Cabe destacar que realizamos la comprobación de que el tipo de vivero sea uno de los tres posibles, pero sin necesidad de crear una tabla para cada uno de ellos.

-- Adds 3 rows to the table "Nurseries"
INSERT INTO Nurseries (name, address, latitude, longitude, zone_stock, type) VALUES ('Nursery 1', 'Calle 1', 27.476775, -5.483790, 10, 'Decoration');
INSERT INTO Nurseries (name, address, latitude, longitude, zone_stock, type) VALUES ('Nursery 2', 'Calle 2', 40.416885, -10.70899, 220, 'Plant');
INSERT INTO Nurseries (name, address, latitude, longitude, zone_stock, type) VALUES ('Nursery 3', 'Calle 3', 10.236799, -1.713791, 300, 'Gardener');

-- Comprobation of the table creation
SELECT * FROM Nurseries;

-- Create the table called "Company"

CREATE TABLE Company (
  id_company SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  id_nursery INTEGER NOT NULL,
  CONSTRAINT fk_nursery
    FOREIGN KEY(id_nursery)
    REFERENCES Nurseries(id_nursery)
);

-- Adds 3 rows to the table "Company"
INSERT INTO Company (name, id_nursery) VALUES ('Company 1', 1);
INSERT INTO Company (name, id_nursery) VALUES ('Company 2', 2);
INSERT INTO Company (name, id_nursery) VALUES ('Company 3', 3);

-- Comprobation of the table creation
SELECT * FROM Company;