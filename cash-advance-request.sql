CREATE TABLE CashAdvanceRequest (
    requestID INT PRIMARY KEY,
    amount DECIMAL(10,2) NOT NULL,
    purpose VARCHAR(200) NOT NULL,
    status VARCHAR(20) NOT NULL,
    requestDateTime DATETIME NOT NULL,
    approvalDateTime DATETIME,
    requesterEmployeeID INT,
    approverEmployeeID INT,
    FOREIGN KEY (requesterEmployeeID) REFERENCES Employee(employeeID),
    FOREIGN KEY (approverEmployeeID) REFERENCES Employee(employeeID)
);
