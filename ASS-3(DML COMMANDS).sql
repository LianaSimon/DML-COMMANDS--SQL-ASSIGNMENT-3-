-- SQL ASSIGNMENT-3(DML COMMANDS)

-- Step 1: Create the Managers table
CREATE DATABASE MANAGERSTABLE;
USE MANAGERSTABLE;
CREATE TABLE MANAGERSTABLE(
Manager_ID INT PRIMARY KEY,
First_name VARCHAR(50),
Last_name VARCHAR(50),
DOB DATE,
Age INT CHECK (Age>=18),
Last_update DATE NOT NULL,
Gender CHAR(1) NOT NULL,
Department VARCHAR(50),
Salary DECIMAL(10,2) NOT NULL
);

-- Step 2: Insert 10 rows
INSERT INTO MANAGERSTABLE(Manager_ID, First_name, Last_name, DOB, Age, Last_update, Gender, Department, Salary) 
VALUES 
(1, 'John', 'Doe', '1985-06-15', 38, '2025-01-15', 'M', 'Finance', 40000),
(2, 'Aaliya', 'Khan', '1990-09-10', 34, '2025-01-15', 'F', 'HR', 30000),
(3, 'Robert', 'Smith', '1982-11-22', 42, '2025-01-15', 'M', 'IT', 45000),
(4, 'Emily', 'Davis', '1993-04-05', 31, '2025-01-15', 'F', 'Marketing', 25000),
(5, 'Michael', 'Brown', '1979-07-14', 45, '2025-01-15', 'M', 'Sales', 50000),
(6, 'Sophia', 'Jones', '1988-03-20', 36, '2025-01-15', 'F', 'IT', 35000),
(7, 'David', 'Wilson', '1984-08-18', 39, '2025-01-15', 'M', 'Operations', 40000),
(8, 'Olivia', 'Taylor', '1995-12-30', 29, '2025-01-15', 'F', 'IT', 28000),
(9, 'James', 'White', '1981-01-10', 44, '2025-01-15', 'M', 'Finance', 37000),
(10, 'Liam', 'Martin', '1987-05-25', 37, '2025-01-15', 'M', 'Marketing', 31000);

-- Step 3: Retrieve the name and date of birth of the manager with Manager_Id 1
SELECT First_name,Last_name,DOB FROM MANAGERSTABLE WHERE Manager_ID=1;

-- Step 4: Display the annual income of all managers
SELECT First_name,Last_name,(Salary*12) AS ANNUAL_SALARY FROM MANAGERSTABLE;

-- Step 5: Display records of all managers except 'Aaliya'
SELECT * FROM MANAGERSTABLE WHERE (First_name!='Aaliya');

-- Step 6: Display details of managers whose department is IT and earn more than 25000 per month
SELECT * FROM MANAGERSTABLE WHERE (Department='IT' AND Salary>25000);

-- Step 7: Display details of managers whose salary is between 10000 and 35000
SELECT * FROM MANAGERSTABLE WHERE Salary BETWEEN 10000 AND 35000;


