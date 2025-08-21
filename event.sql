CREATE TABLE Event (
    eventID INT PRIMARY KEY,
    eventType VARCHAR(50) NOT NULL,
    description VARCHAR(200),
    eventDateTime DATETIME NOT NULL,
    initiatedBy INT,
    requestID INT,
    FOREIGN KEY (initiatedBy) REFERENCES Employee(employeeID),
    FOREIGN KEY (requestID) REFERENCES CashAdvanceRequest(requestID)
);
