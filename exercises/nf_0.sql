CREATE TABLE Employees (
    Name VARCHAR(50),
    Project1 VARCHAR(50),
    Project2 VARCHAR(50),
    Project3 VARCHAR(50)
);

INSERT INTO Employees (Name, Project1, Project2, Project3)
VALUES ('Bob', 'Project A', 'Project B', NULL), ('Jane', 'Project B', 'Project C', NULL),
       ('John', 'Project A', 'Project C', 'Project D');

-- Migration to 1 NF
-- Temporarily store old data
SELECT * INTO temp_table FROM Employees;

-- Drop the previous table
DROP TABLE Employees;

-- Create the new table in 1NF
CREATE TABLE Employees (
    Name VARCHAR(50),
    Project VARCHAR(50)
);

-- Migrate the data
INSERT INTO Employees (Name, Project)
SELECT DISTINCT Name, Project FROM temp_table;