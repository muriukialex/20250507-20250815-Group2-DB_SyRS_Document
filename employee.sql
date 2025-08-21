CREATE TABLE Employee (
    employeeID INT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    departmentID INT,
    roleID INT,
    FOREIGN KEY (departmentID) REFERENCES Department(departmentID),
    FOREIGN KEY (roleID) REFERENCES Role(roleID)
);
