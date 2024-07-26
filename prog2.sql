USE jun_17;
CREATE TABLE Clients (
    ClientID BIGINT PRIMARY KEY,
    ClientName VARCHAR(100),
    ContactName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    NumberOfProjects INT,
    TotalSpent BIGINT
);