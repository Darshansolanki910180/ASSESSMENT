# Question 1
CREATE TABLE Worker (
    WORKER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    SALARY INT,
    JOINING_DATE DATETIME,
    DEPARTMENT VARCHAR(25)
);

Insert into Worker 
values
(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');

# 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 

select * from worker
order by FIRST_NAME, DEPARTMENT desc;

# 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table. 

select *  from worker
where FIRST_NAME in ('Vipul','Satish');

# 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

select * from worker
where FIRST_NAME like '%h' and 
      length(FIRST_NAME) = 6;
      
# 4. Write an SQL query to print details of the Workers whose SALARY lies between 1. 
select * 
from Worker
where SALARY between 100000 AND 300000;

# 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
Select FIRST_NAME, LAST_NAME, DEPARTMENT, COUNT(*) 
from Worker
group by FIRST_NAME, LAST_NAME, DEPARTMENT
having count(*) > 1;

# 6. Write an SQL query to show the top 6 records of a table. 
select * from worker
limit 6;

# 7. Write an SQL query to fetch the departments that have less than five people in them.

select DEPARTMENT, count(DEPARTMENT) as Total_people
from Worker
group by DEPARTMENT
having COUNT(DEPARTMENT) < 5;

# 8. Write an SQL query to show all departments along with the number of people in there. 

select DEPARTMENT, count(DEPARTMENT) as Total_people
from Worker
group by DEPARTMENT;

# 9. Write an SQL query to print the name of employees having the highest salary in each department. 
SELECT w.FIRST_NAME, w.SALARY, w.DEPARTMENT
FROM Worker w
WHERE w.SALARY = (
    SELECT MAX(SALARY)
    FROM Worker
    WHERE DEPARTMENT = w.DEPARTMENT
);

# Question 2
CREATE TABLE Student (
    Std_ID INT PRIMARY KEY,
    StdName VARCHAR(50),
    Sex VARCHAR(10),
    Percentage INT,
    Class VARCHAR(10),
    Sec VARCHAR(5),
    Stream VARCHAR(20),
    DOB DATE
);

INSERT INTO Student 
values
(1001, 'Aarav Sharma', 'Male', 85, '11',' A', 'Science', '2007-05-12'),
(1002, 'Diya Patel', 'Female', 78, '11','B', 'Commerce', '2007-08-22'),
(1003, 'Rohan Mehta', 'Male', 92, '12 ','A', 'Science', '2006-03-15'),
(1004, 'Sneha Iyer', 'Female', 88, '12','B', 'Commerce', '2006-11-30'),
(1005, 'Karan Singh', 'Male', 67, '11','C', 'Arts', '2007-01-19'),
(1006, 'Neha Gupta', 'Female', 74, '11','A', 'Science', '2007-07-25'),
(1007, 'Rahul Das', 'Male', 81, '12','C', 'Commerce', '2006-09-10'),
(1008, 'Pooja Nair', 'Female', 90, '12','A', 'Science', '2006-02-05'),
(1009, 'Vikram Joshi', 'Male', 72, '11','B', 'Arts', '2007-12-14'),
(1010, 'Anjali Verma', 'Female', 86, '11','F', 'Science', '1996-11-23'),
(1011, 'Harsh Agarwal', 'Male', 42, '11','C', 'Science', '1998-03-08'),
(1012, 'Nikunj Agarwal', 'Male', 49, '12','C', 'Commerce', '1998-06-28'),
(1013, 'Akriti Saxena', 'Female', 89, '12','A', 'Science', '2008-11-23'),
(1014, 'Tani Rastogi', 'Female', 82, '12','A', 'Science', '2008-11-23');

# 1. To display all the records form STUDENT table. 
select * from Student;

# 2. To display any name and date of birth from the table STUDENT. 
SELECT StdName, DOB FROM student; 

# 3. To display all students record where percentage is greater of equal to 80 FROM student table. 
select * FROM student
 WHERE percentage >= 80; 
  
#4. To display student name, stream and percentage where percentage of student is more than 80
select StdName, Stream, Percentage
FROM Student
WHERE Percentage > 80; 

# 5. To display all records of science students whose percentage is more than 75 form student table.

SELECT * From student
WHERE stream = 'Science' AND percentage > 75;

