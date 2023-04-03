CREATE TABLE Employees (
    Name VARCHAR(50),
    Project VARCHAR(50)
);

INSERT INTO Employees (Name, Project)
VALUES ('Bob', 'Project A'), ('Bob', 'Project B'),
       ('Jane', 'Project B'), ('Jane', 'Project C'),
       ('John', 'Project A'), ('John', 'Project C'), ('John', 'Project D');

-- Migration to 2 NF; Exercise for the reader