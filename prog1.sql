USE jun_17;
CREATE TABLE Projects (
    ProjectID BIGINT PRIMARY KEY,
    ProjectName VARCHAR(100),
    ClientName VARCHAR(100),
    StartDate VARCHAR(20),
    EndDate VARCHAR(20),
    Status INT,
    Budget INT
);
