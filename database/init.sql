-- 0 Normal Form 
CREATE TABLE Employees (
    Name VARCHAR(50),
    Project1 VARCHAR(50),
    Project2 VARCHAR(50),
    Project3 VARCHAR(50)
);

INSERT INTO Employees (Name, Project1, Project2, Project3)
VALUES ('Bob', 'Project A', 'Project B', NULL), ('Jane', 'Project B', 'Project C', NULL),
       ('John', 'Project A', 'Project C', 'Project D');
