USE university;
SELECT * FROM employee;

SELECT std_id, First_ame, Last_name			-- IN,WHERE OPERATOR
FROM student
WHERE std_id IN (3,1,10);

SELECT std_id, First_ame, Last_name, course			-- AND OPERATOR
FROM student
WHERE std_id= 3 AND course= 'CSE';

SELECT std_id, First_ame, Last_name, course			-- OR OPERATOR
FROM student
WHERE std_id= 3 OR course= 'CSE';

SELECT DISTINCT(course)					-- DISTINCT
FROM student;

SELECT Last_name, COUNT(Last_name) AS Total_rows			-- COUNT & ALIAS
FROM student;

SELECT std_id, first_ame,last_name, course
FROM student
WHERE NOT(course = 'science') AND NOT (course ='school');					-- NOT

SELECT std_id, first_ame,last_name, course
FROM student
WHERE course LIKE '%E';							-- LIKE

SELECT * FROM employee;
SELECT * FROM employee ORDER BY salary ASC;    				-- ORDER BY & ASC| DESC

UPDATE employee
SET Name='Suresh Prajapti'			-- 	UPDATE
WHERE Emp_id = 1005;

INSERT INTO employee
VALUES(1008, 'Satya Dash', 'Bsc' ,29000),
(1007, 'Subendu Mohanty', 'Biotechnoloy', 45000);

DELETE FROM employee		-- DELETE
WHERE Emp_id =1001;

-- Concat (means adding two columns value)
SELECT std_id, first_ame, last_name, CONCAT(First_ame, ' ', Last_name) AS Full_name FROM student;

-- LENGTH
SELECT std_id, first_ame, last_name, CONCAT(First_ame, ' ', Last_name)as Full_name,
LENGTH(CONCAT(First_ame, ' ', Last_name)) AS Full_name_length FROM student;

-- UPPER & LOWER CASE
SELECT std_id, first_ame,last_name, UPPER(first_ame) AS Upper_case
FROM student;

-- SUBSTR & INSTR
SELECT std_id, first_ame, last_name,
SUBSTR(first_ame, 1,5) AS New_value
FROM student;
SELECT std_id, first_ame, last_name,
INSTR(first_ame, 'o') AS New_value
FROM student  WHERE std_id=1;

-- LPAD & RPAD 
SELECT first_ame, last_name, LPAD(first_ame, 12 ,'*') FROM student;
SELECT first_ame, last_name, RPAD(LPAD(first_ame, 12 ,'*'),19,'*')
FROM student;

-- TRIM (only can trim the 1st and last value from the string)
SELECT first_ame, last_name, TRIM('i'FROM First_ame) FROM student
WHERE std_id = 1;

-- REPLACE
SELECT emp_id, name, REPLACE(emp_id,1002,1001) AS replaced_value
FROM employee WHERE emp_id=1002;

-- ROUND, TRUNCATE
SELECT ROUND(38.8) AS rounded_value;
SELECT TRUNCATE(38.82,1) AS Truncate_value;

-- MOD 
SELECT MOD(28,4) AS Remainder;

-- COALSCE 
SELECT emp_id, name,courses, COALESCE(courses,emp_id, 'course value is not gives') As course_value
FROM employee; 

-- current date & time
SELECT now() AS Curent_date;

-- current year
SELECT YEAR(now()) AS Current_year;

-- current date
SELECT current_date();

-- date format
SELECT DATE_FORMAT(now(), '%d' '-' '%m' '-' '%y');

-- adding or subsracting date 
SELECT DATE_ADD(now(), INTERVAL 1 day) AS Tomorrow;

-- difference in date
SELECT DATEDIFF('2022-10-01','1999-05-23');