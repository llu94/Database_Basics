CREATE TABLE Employees (
    EmployeeID SERIAL PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Projects (
    ProjectID SERIAL PRIMARY KEY,
    Project VARCHAR(50)
);

CREATE TABLE EmployeeProjectInfo (
    EmployeeID INT REFERENCES Employees(EmployeeID),
    ProjectID INT REFERENCES Projects(ProjectID),
    Info VARCHAR(50),
    PRIMARY KEY (EmployeeID, ProjectID)
);

INSERT INTO Employees (Name)
VALUES ('Bob'), ('Jane'), ('John');

INSERT INTO Projects (Project)
VALUES ('Project A'), ('Project B'), ('Project C'), ('Project D');

INSERT INTO EmployeeProjectInfo (EmployeeID, ProjectID, Info)
VALUES (1, 1, 'Project A info'), (1, 2, 'Project B info'),
       (2, 2, 'Project B info'), (2, 3, 'Project C info'),
       (3, 1, 'Project A info'), (3, 3, 'Project C info'), (3, 4, 'Project D info');

