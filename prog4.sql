USE xworkz;
CREATE TABLE Departments (
    DepartmentID BIGINT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    ManagerName VARCHAR(100),
    Location VARCHAR(100),
    ContactNumber VARCHAR(20),
    NumberOfEmployees INT,
    Budget INT
);