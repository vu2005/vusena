-- Category Table
CREATE TABLE Category (
    CategoryId INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

-- Role Table
CREATE TABLE Role (
    RoleId INT AUTO_INCREMENT PRIMARY KEY,
    RoleName VARCHAR(50) NOT NULL
);

-- Product Table
CREATE TABLE Product (
    ProductId INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Description TEXT,
    CategoryId INT,
    FOREIGN KEY (CategoryId) REFERENCES Category(CategoryId)
);

-- Customer Table
CREATE TABLE Customer (
    CustomerId INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    PhoneNumber VARCHAR(15)
);

-- PurchaseHistory Table
CREATE TABLE PurchaseHistory (
    PurchaseId INT AUTO_INCREMENT PRIMARY KEY,
    CustomerId INT,
    ProductId INT,
    PurchaseDate DATETIME NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId),
    FOREIGN KEY (ProductId) REFERENCES Product(ProductId)
);

-- Employee Table
CREATE TABLE Employee (
    EmployeeId INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    RoleId INT,
    FOREIGN KEY (RoleId) REFERENCES Role(RoleId)
);
