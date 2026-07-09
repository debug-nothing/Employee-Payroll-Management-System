-- create database PayrollDB;
use PayrollDB;
create table Employees(
EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
EmployeeCode CHAR(6) NOT NULL UNIQUE,
FullName VARCHAR(100) NOT NULL,
Gender ENUM('Male','Female') NOT NULL,
Department ENUM('Sales', 'Development', 'Research', 'Logistics', 'Marketing', 'Purchase','Support' ) NOT NULL,
City VARCHAR(40) NOT NULL DEFAULT 'Mumbai',
Salary DECIMAL(10,2) NOT NULL,
HRA DECIMAL(10,2) NOT NULL,
DA DECIMAL(10,2) NOT NULL,
Bonus FLOAT DEFAULT 0,
TaxRate DECIMAL(5,2) DEFAULT 10.00,
Bio TEXT,
DateOfBirth DATE NOT NULL,
JoiningDate DATE NOT NULL,
Lastlogin TIME,
Skills SET('Excel', 'SQL', 'Power BI', 'Python', 'Tableau', 'R'),
IsActive BOOLEAN DEFAULT TRUE,
CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);