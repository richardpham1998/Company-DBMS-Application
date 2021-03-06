USE milestone3;

/**
* MAIN TABLES BEGIN HERE
**/
CREATE TABLE Employees(
IDNumber INT PRIMARY KEY,
firstName VARCHAR(50) NOT NULL,
lastName VARCHAR(50) NOT NULL,
DOB DATE NOT NULL,
street VARCHAR(25) NOT NULL,
city VARCHAR(25) NOT NULL,
zip INT NOT NULL,
phoneNumber VARCHAR(25) NOT NULL,
email VARCHAR(50) NOT NULL,
salary INT NOT NULL,
startDate DATE NOT NULL
);

CREATE TABLE Managers(
IDNumber INT PRIMARY KEY,
firstName VARCHAR(50) NOT NULL,
lastName VARCHAR(50) NOT NULL,
DOB DATE NOT NULL,
street VARCHAR(25) NOT NULL,
city VARCHAR(25) NOT NULL,
zip INT NOT NULL,
phoneNumber VARCHAR(25) NOT NULL,
email VARCHAR(50) NOT NULL,
salary INT NOT NULL,
branch VARCHAR(25) NOT NULL,
startDate DATE NOT NULL
);

CREATE TABLE Branches(
branchName VARCHAR(25) PRIMARY KEY,
dateCreated DATE NOT NULL,
cost INT NOT NULL,
profit INT NOT NULL
);

CREATE TABLE Investors(
IDNumber INT PRIMARY KEY,
firstName VARCHAR(50) NOT NULL,
lastName VARCHAR(50) NOT NULL,
phoneNumber VARCHAR(25) NOT NULL,
email VARCHAR(50) NOT NULL,
contribution INT NOT NULL,
dateJoined DATE NOT NULL
);

CREATE TABLE Products(
productID INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
functionality VARCHAR(50) NOT NULL,
dateCreated DATE NOT NULL,
priceSold INT NOT NULL,
costToMake INT NOT NULL
);

CREATE TABLE Stocks(
stockID INT PRIMARY KEY,
price INT NOT NULL,
numShared INT NOT NULL
);

CREATE TABLE Customers(
customerID INT PRIMARY KEY,
firstName VARCHAR(50) NOT NULL,
lastName VARCHAR(50) NOT NULL,
DOB DATE NOT NULL,
street VARCHAR(25) NOT NULL,
city VARCHAR(25) NOT NULL,
zip INT NOT NULL,
phoneNumber VARCHAR(25) NOT NULL,
email VARCHAR(50) NOT NULL
);

/**
* RELATION TABLES BEGIN HERE
**/

CREATE TABLE Orders(
orderNum INT PRIMARY KEY
);

CREATE TABLE Buys(
customerID INT NOT NULL,
productID INT NOT NULL,
PRIMARY KEY(customerID, productID)
);

CREATE TABLE Has(
customerID INT NOT NULL,
orderID INT NOT NULL,
PRIMARY KEY(customerID, orderID)
);

CREATE TABLE MadeOf(
productID INT NOT NULL,
orderID INT NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY(productID, orderID)
);

CREATE TABLE Makes(
productID INT NOT NULL,
branchName VARCHAR(25) NOT NULL,
PRIMARY KEY(productID, branchName)
);

CREATE TABLE Owns(
branchName VARCHAR(25) NOT NULL,
stockID INT NOT NULL,
PRIMARY KEY(branchName, stockID)
);
CREATE TABLE InvestsIn(
stockID INT NOT NULL,
investorID INT NOT NULL,
PRIMARY KEY(stockID, investorID)
);

CREATE TABLE Contains(
employeeID INT NOT NULL,
branchName VARCHAR(25) NOT NULL,
PRIMARY KEY(employeeID, branchName)
);

CREATE TABLE RunBy(
branchName VARCHAR(25) NOT NULL,
managerID INT NOT NULL,
PRIMARY KEY(branchName, managerID)
);

CREATE TABLE Manages(
employeeID INT NOT NULL,
managerID INT NOT NULL,
PRIMARY KEY(employeeID, managerID)
);
