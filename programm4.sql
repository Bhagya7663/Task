USE xworkz;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    LoyaltyPoints INT,
    TotalSpent BIGINT,
    MembershipID BIGINT
);