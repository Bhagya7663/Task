USE jun_17;
CREATE TABLE Tasks (
    TaskID BIGINT PRIMARY KEY,
    TaskName VARCHAR(100),
    AssignedTo VARCHAR(100),
    StartDate VARCHAR(20),
    DueDate VARCHAR(20),
    Priority INT,
    ProjectID BIGINT
);