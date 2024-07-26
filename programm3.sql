USE jun_17;
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    CustomerEmail VARCHAR(100),
    ShippingAddress VARCHAR(255),
    BillingAddress VARCHAR(255),
    OrderStatus INT,
    TotalAmount BIGINT,
    PaymentID BIGINT
);
