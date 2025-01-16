# DML-COMMANDS--SQL-ASSIGNMENT-3-

## DML Commands for Managers Table
This repository contains SQL scripts to perform operations on a Managers table. The script includes table creation, data insertion, and various queries to retrieve and manipulate data.

# -- SQL Script for DML Commands

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



## -- Step 1: Create the Managers table

![image](https://github.com/user-attachments/assets/17a90d5c-baa9-4ab1-9d01-656035436146)

## -- Step 2: Insert 10 rows

![image](https://github.com/user-attachments/assets/da7d2bc9-078a-4256-8bf8-9582458dfb1b)

## -- Step 3: Retrieve the name and date of birth of the manager with Manager_Id 1

![image](https://github.com/user-attachments/assets/552ff31f-bc3b-43ca-b504-4d3b386c1078)

## -- Step 4: Display the annual income of all managers

![image](https://github.com/user-attachments/assets/bedac1b9-b3ea-47ba-9cb0-478092b1e403)

## -- Step 5: Display records of all managers except 'Aaliya'

![image](https://github.com/user-attachments/assets/ccd9d1b4-42a9-4057-94f1-508bfd080c4a)

## -- Step 6: Display details of managers whose department is IT and earn more than 25000 per month

![image](https://github.com/user-attachments/assets/dacca03c-c02a-40aa-9233-ae3595d9f690)

## -- Step 7: Display details of managers whose salary is between 10000 and 35000

![image](https://github.com/user-attachments/assets/d61a2f61-c28d-42c3-bdac-4504a19ebfa2)



### Table Structure

The Managers table includes the following fields:

Manager_Id: Primary key (Integer)

First_name: Manager's first name (String)

Last_Name: Manager's last name (String)

DOB: Date of Birth (Date)

Age: Manager's age (Integer, with a minimum constraint of 18)

Last_update: Date of the last update (Date, Not Null)

Gender: Manager's gender (Char,Not Null) 

Department: Department name (String)

Salary: Monthly salary (Decimal, Not Null)

## Included Operations

* Create Table: Definition of the Managers table with constraints.
  
* Insert Rows: Adds 10 sample records to the table.
  
* Queries:
Retrieve name and date of birth for Manager_Id = 1.

Calculate and display the annual income of all managers.

Retrieve records excluding a specific manager (Aaliya).

Display details of managers from the IT department earning over 25,000.

Display details of managers earning between 10,000 and 35,000.


### Usage

1. Copy the SQL script into your preferred SQL editor.
   
2. Execute the script to create and populate the table.

3. Run individual queries to retrieve or manipulate data as per requirements.

   
Feel free to modify the script for additional functionality or custom queries.
