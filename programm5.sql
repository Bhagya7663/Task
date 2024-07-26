USE xworkz;
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactName VARCHAR(50),
    ContactEmail VARCHAR(100),
    Address VARCHAR(255),
    Rating INT,
    TotalSupplies BIGINT,
    ContractID BIGINT
);