/* create database PayrollDB; */
use PayrollDB;
/*create table Employees(
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
INSERT INTO Employees 
(EmployeeCode, FullName, Gender, Department, City, Salary, HRA, DA, Bonus, TaxRate, Bio, DateOfBirth, JoiningDate, Lastlogin, Skills, IsActive)
VALUES 
('EMP006', 'Vikram Malhotra', 'Male', 'Development', 'Bangalore', 82000.00, 16400.00, 8200.00, 4000.00, 10.00, 'Backend dev focused on scalable APIs.', '1994-05-14', '2022-11-10', '08:45:22', 'SQL,Python', TRUE),
('EMP007', 'Ananya Iyer', 'Female', 'Research', 'Chennai', 95000.00, 19000.00, 9500.00, 6000.00, 5.00, 'Data scientist specializing in NLP.', '1992-09-21', '2021-04-18', '09:02:11', 'Python,R,Tableau', TRUE),
('EMP008', 'Rohan Das', 'Male', 'Sales', 'Mumbai', 48000.00, 9600.00, 4800.00, 7500.00, 10.00, 'Top performing regional sales lead.', '1996-12-05', '2023-02-15', '10:15:00', 'Excel', TRUE),
('EMP009', 'Kriti Sanon', 'Female', 'Marketing', 'Delhi', 55000.00, 11000.00, 5500.00, 3000.00, 9.00, 'Digital marketing and SEO specialist.', '1997-07-28', '2024-05-20', '09:30:45', 'Excel,Power BI', TRUE),
('EMP010', 'Arjun Kapoor', 'Male', 'Logistics', 'Kolkata', 42000.00, 8400.00, 4200.00, 1500.00, 5.00, 'Supply chain coordinator.', '1995-03-11', '2023-08-01', '07:55:00', 'Excel', TRUE),
('EMP011', 'Meera Nair', 'Female', 'Purchase', 'Mumbai', 51000.00, 10200.00, 5100.00, 2000.00, 7.00, 'Procurement specialist.', '1993-11-30', '2022-01-10', '09:10:12', 'Excel,R,SQL', TRUE),
('EMP012', 'Siddharth Roy', 'Male', 'Support', 'Pune', 38000.00, 7600.00, 3800.00, 1200.00, 5.00, 'Customer success representative.', '1999-01-25', '2025-01-05', '14:22:19', 'Excel,SQL', TRUE),
('EMP013', 'Aditi Rao', 'Female', 'Development', 'Hyderabad', 78000.00, 15600.00, 7800.00, 5000.00, 6.70, 'Full stack web application developer.', '1996-04-17', '2023-06-14', '08:58:00', 'SQL,Python', TRUE),
('EMP014', 'Varun Dhawan', 'Male', 'Marketing', 'Mumbai', 58000.00, 11600.00, 5800.00, 4500.00, 10.00, 'Brand manager and content strategist.', '1994-10-09', '2021-10-01', '09:40:33', 'Excel,Power BI,Tableau', TRUE),
('EMP015', 'Isha Gupta', 'Female', 'Sales', 'Bangalore', 46000.00, 9200.00, 4600.00, 8000.00, 10.00, 'B2B software sales executive.', '1998-02-14', '2024-11-01', '11:00:05', 'Excel', TRUE),
('EMP016', 'Aditya Birla', 'Male', 'Purchase', 'Delhi', 63000.00, 12600.00, 6300.00, 2500.00, 4.50, 'Vendor management head.', '1991-06-23', '2020-03-15', '09:15:55', 'Excel,Power BI', TRUE),
('EMP017', 'Rhea Chakraborty', 'Female', 'Support', 'Mumbai', 36000.00, 7200.00, 3600.00, 1000.00, 5.00, 'Technical support executive.', '2000-08-19', '2025-03-01', '13:05:44', 'Excel', TRUE),
('EMP018', 'Karan Johar', 'Male', 'Logistics', 'Ahmedabad', 44000.00, 8800.00, 4400.00, 1800.00, 5.00, 'Fleet and dispatch manager.', '1992-05-25', '2022-07-19', '06:30:00', 'Excel', FALSE),
('EMP019', 'Kiara Advani', 'Female', 'Development', 'Bangalore', 89000.00, 17800.00, 8900.00, 5500.00, 3.00, 'Cloud infrastructure engineer.', '1995-07-31', '2022-02-28', '09:00:01', 'SQL,Python', TRUE),
('EMP020', 'Ayushmann Khurrana', 'Male', 'Research', 'Pune', 92000.00, 18400.00, 9200.00, 0.00, 8.00, 'AI/ML algorithm researcher.', '1993-09-14', '2021-08-12', '09:22:10', 'Python,R', TRUE),
('EMP021', 'Tara Sutaria', 'Female', 'Sales', 'Hyderabad', 49000.00, 9800.00, 4900.00, 9000.00, 10.00, 'Corporate relationship manager.', '1997-11-19', '2024-02-10', '10:00:22', 'Excel,Power BI', TRUE),
('EMP022', 'Ranbir Kapoor', 'Male', 'Marketing', 'Mumbai', 67000.00, 13400.00, 6700.00, 5000.00, 7.50, 'Social media analytics expert.', '1992-09-28', '2020-11-15', '09:50:11', 'Excel,Tableau', TRUE),
('EMP023', 'Alia Bhatt', 'Female', 'Development', 'Delhi', 81000.00, 16200.00, 8100.00, 4800.00, 8.00, 'Frontend developer React expert.', '1996-03-15', '2023-01-20', '08:52:40', 'Excel,SQL,Python', TRUE),
('EMP024', 'Ranveer Singh', 'Male', 'Sales', 'Chennai', 47000.00, 9400.00, 4700.00, 8500.00, 10.00, 'High-energy field sales representative.', '1993-07-06', '2022-05-05', '10:45:15', 'Excel', TRUE),
('EMP025', 'Deepika Padukone', 'Female', 'Research', 'Mumbai', 98000.00, 19600.00, 9800.00, 7000.00, 5.00, 'Principal statistical data analyst.', '1991-01-05', '2019-06-01', '09:05:00', 'SQL,Python,R,Tableau', TRUE),
('EMP026', 'Vicky Kaushal', 'Male', 'Logistics', 'Mumbai', 43000.00, 8600.00, 4300.00, 1600.00, 5.00, 'Warehouse inventory manager.', '1994-05-16', '2023-09-11', '08:15:30', 'Excel', TRUE),
('EMP027', 'Katrina Kaif', 'Female', 'Purchase', 'Bangalore', 64000.00, 12800.00, 6400.00, 2200.00, 7.50, 'International sourcing specialist.', '1992-07-16', '2021-12-01', '09:20:44', 'Excel,Power BI', TRUE),
('EMP028', 'Kartik Aaryan', 'Male', 'Support', 'Delhi', 39000.00, 7800.00, 3900.00, 1100.00, 10.00, 'Helpdesk team supervisor.', '1995-11-22', '2024-08-16', '12:45:00', 'Excel,SQL', TRUE),
('EMP029', 'Sara Ali Khan', 'Female', 'Marketing', 'Pune', 54000.00, 10800.00, 5400.00, 3200.00, 10.00, 'Public relations officer.', '1998-08-12', '2024-03-24', '09:35:18', 'Excel', FALSE),
('EMP030', 'Zara Mahmood', 'Female', 'Support', 'Nashik', 60000.00, 103000.00,3700.00, 3000.00, 7.00, 'Helpdesk team leader', '1999-06-12', '2024-03-24', '09:35:18', 'Excel', FALSE);

select * from Employees; 
select FullName,Gender,Department From Employees
where Skills="Excel"; 
select FullName,Gender,Department From Employees
ORDER BY Fullname ASC,Gender desc; 
select * from Employees;
select Salary, HRA, DA, Bonus, Taxrate, (Salary+HRA+DA+Bonus) As Gross_salary From Employees; 
select Salary, HRA, DA, Bonus, Taxrate, ((Salary+HRA+DA+Bonus)* Taxrate/100) as Tax_Amount From Employees;
select Salary, HRA, DA, Bonus, Taxrate, 
((Salary+HRA+DA+Bonus) -  ((Salary+HRA+DA+Bonus)* Taxrate/100)) 
As Net_Salary from Employees; 
select (Salary+HRA+DA+Bonus) as Gross_salary, 
((Salary+HRA+DA+Bonus)* Taxrate/100) as Tax_Amount, 
((Salary+HRA+DA+Bonus) -  ((Salary+HRA+DA+Bonus)* Taxrate/100)) as Net_Salary from Employees; 
Select * from Employees; 
Update Employees
set Department = "Sales"
where EmployeeID=1; 
select * from Employees 
where EmployeeID=1;

Update Employees
set salary=salary + 5000
where Department="Sales";
select * from Employees 
limit 10; 

Update Employees
set Bonus=Bonus+1000
where Department='Research';

update Employees
set IsActive=1
where EmployeeID=13;
select * from Employees
where EmployeeID=13; 
Delete From Employees
where IsActive=0;
select * from employees;

Select * From employees
where salary Between 50000 and 70000; 

Select * From employees
where FullName Like "A%"; */

SELECT *
FROM Employees
WHERE City IN ('Mumbai','Pune');
