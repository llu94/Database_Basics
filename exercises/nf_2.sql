CREATE TABLE Employees (
    EmployeeID SERIAL PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Projects (
    ProjectID SERIAL PRIMARY KEY,
    Project VARCHAR(50)
);

CREATE TABLE EmployeeProjects (
    EmployeeID INT REFERENCES Employees(EmployeeID),
    ProjectID INT REFERENCES Projects(ProjectID),
    PRIMARY KEY (EmployeeID, ProjectID)
);

INSERT INTO Employees (Name)
VALUES ('Bob'), ('Jane'), ('John');

INSERT INTO Projects (Project)
VALUES ('Project A'), ('Project B'), ('Project C'), ('Project D');

INSERT INTO EmployeeProjects (EmployeeID, ProjectID)
VALUES (1, 1), (1, 2), (2, 2), (2, 3), (3, 1), (3, 3), (3, 4);

-- Migration to 3 NF; Exercise for the reader
