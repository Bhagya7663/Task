Use jun_17;
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Description VARCHAR(255),
    Manufacturer VARCHAR(100),
    Stock INT,
    Price BIGINT,
    SupplierID BIGINT
);