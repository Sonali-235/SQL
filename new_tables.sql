CREATE DATABASE University;  -- Database created

USE University;   -- for using operations in database, else manually also possible in GUI

CREATE TABLE Student(
std_id INT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(40) NOT NULL,
Age int(3), Gmail Varchar(40), Course varchar(40), fees_status boolean);  -- creating a table

DROP TABLE Student;   -- for deleting the table

SELECT * FROM Employee;   -- For showing every columns in table

CREATE TABLE Student(
std_id INT PRIMARY KEY AUTO_INCREMENT, First_ame VARCHAR(40) NOT NULL, Last_name Varchar(40),
Age int(3), Gmail Varchar(40), Course varchar(40));

-- inserting values to the table
INSERT INTO Student					
VALUES(2, 'Sweety' , 'Choudhury' , 24 , 'Choudhury25@gmail.com' , 'EE'),
(3, 'Biswajit' , 'Rout' , 22 , 'routbiswajit@gmail.com' , 'CSE'),
(4, 'Sonam' , 'Choudhury' , 20 , 'sonam@gmail.com' , 'Biotechnology'),
(5, 'Sitam' , 'Patel' , 21 , 'sitampatel@gmail.com' , 'Biotechnology'),
(6, 'Subhasmita' , 'Rout' , 19 , 'subha11@gmail.com' , 'Bsc'),
(7, 'Nibedita' , 'Patel' , 24 , 'nita.nibedita@gmail.com' , 'Msc'),
(8, 'Suchismita' , 'Patel' , 16 , 'suchismita@gmail.com' , 'Science'),
(9, 'Ashirbad' , 'Patel' , 10 , 'ashish@gmail.com' , 'School'),
(10, 'Pratik' , 'Patel' , 10 , 'pratikpatel@gmail.com' , 'Science'),
(11, 'Dheeraj' , 'Patel' , 23 , 'dheeraj12@gmail.com' , 'Law'),
(12, 'Deepak' , 'Patel' , 29 , 'deepakpatel@gmail.com' , 'B.tech')
; 

CREATE TABLE Employee(
Emp_id INT PRIMARY KEY AUTO_INCREMENT, Name Varchar(40),
Courses Varchar(40), Salary int);

INSERT INTO Employee
VALUES (1001, 'Manoj Kar' , 'CSE' , 35000),
(1002, 'Chandan Kumar Giri' , 'CSE' , 38000),
(1003, 'K.Santosh' , 'EE' , 30000),
(1004, ' Ram Sahoo' , 'Science' , 19000),
(1005, 'Manoj Pati' , 'Law' , 35000);

 

