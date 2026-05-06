create database University_Course;
use University_Course;

create table Students (
StudentID int primary key NOT NULL,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email CHAR(100) unique NOT NULL,
BirthDate DATE,
EnrollmentDate date
)
select * from students;
insert into Students (StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate) 
values (1, 'John', 'Smith', 'john.smith@gmail.com', '2000-05-12', '2022-06-15'),
(2, 'Emma', 'Johnson', 'emma.johnson@gmail.com', '2001-08-22', '2023-01-10'),
(3, 'Michael', 'Brown', 'michael.brown@gmail.com', '1999-12-03', '2021-09-20'),
(4, 'Olivia', 'Davis', 'olivia.davis@gmail.com', '2002-03-18', '2023-07-05'),
(5, 'William', 'Miller', 'william.miller@gmail.com', '2000-11-30', '2022-11-25'),
(6, 'Sophia', 'Wilson', 'sophia.wilson@gmail.com', '2001-06-14', '2023-02-17'),
(7, 'James', 'Moore', 'james.moore@gmail.com', '1998-09-09', '2020-08-01'),
(8, 'Isabella', 'Taylor', 'isabella.taylor@gmail.com', '2002-01-27', '2024-01-12'),
(9, 'Benjamin', 'Anderson', 'benjamin.anderson@gmail.com', '1999-07-19', '2021-05-30'),
(10, 'Mia', 'Thomas', 'mia.thomas@gmail.com', '2003-04-25', '2024-03-22');

create table Courses (
CourseID int primary key ,
CourseName VARCHAR(50)not null,
DepartmentID int,
Credits int
);

insert into Courses (CourseID, CourseName, DepartmentID, Credits) 
values(1, 'Data Structures', 101, 4),
(2, 'Database Systems', 101, 3),
(3, 'Operating Systems', 101, 4),
(4, 'Machine Learning', 101, 3),
(5, 'Linear Algebra', 102, 4),
(6, 'Calculus', 102, 3),
(7, 'Statistics', 102, 3),
(8, 'Microeconomics', 103, 3),
(9, 'Marketing Basics', 104, 2),
(10, 'Financial Accounting', 104, 3);


create table Department (
DepartmentID int primary key not null,
DepartmentName varchar(50));

INSERT INTO Department (DepartmentID, DepartmentName)
VALUES 
(101, 'Computer Science'),
(102, 'Mathematics'),
(103, 'Economics'),
(104, 'Commerce'),
(105, 'Physics'),
(106, 'Chemistry'),
(107, 'Biology'),
(108, 'English'),
(109, 'History'),
(110, 'Statistics');


create table Instructors (
InstructureID int primary key,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email char(100) unique,
DepartmentID int,
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

INSERT INTO Instructors (InstructureID, FirstName, LastName, Email, DepartmentID)
VALUES
(1, 'David', 'Brown', 'david.brown@gmail.com', 101),
(2, 'James', 'Wilson', 'james.wilson@gmail.com', 102),
(3, 'Robert', 'Taylor', 'robert.taylor@gmail.com', 103),
(4, 'Michael', 'Anderson', 'michael.anderson@gmail.com', 104),
(5, 'John', 'Thomas', 'john.thomas@gmail.com', 101),
(6, 'William', 'Jackson', 'william.jackson@gmail.com', 102),
(7, 'Richard', 'White', 'richard.white@gmail.com', 103),
(8, 'Joseph', 'Harris', 'joseph.harris@gmail.com', 104),
(9, 'Thomas', 'Martin', 'thomas.martin@gmail.com', 101),
(10, 'Charles', 'Thompson', 'charles.thompson@gmail.com', 102);

create table  Enrollments (
EnrolmentID int primary key,
StudentID int,
CourseID int,
EnrollmentDate date,
foreign key (StudentID) references students(StudentID),
foreign key (CourseID) references Courses(CourseID)
);

INSERT INTO Enrollments (EnrolmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(1, 1, 1, '2022-06-15'),
(2, 2, 2, '2023-01-10'),
(3, 3, 3, '2021-09-20'),
(4, 4, 4, '2023-07-05'),
(5, 5, 5, '2022-11-25'),
(6, 6, 6, '2023-02-17'),
(7, 7, 7, '2020-08-01'),
(8, 8, 8, '2024-01-12'),
(9, 9, 9, '2021-05-30'),
(10, 10, 10, '2024-03-22');
INSERT INTO Enrollments VALUES (11, 2, 1, '2024-05-01');
INSERT INTO Enrollments VALUES (12, 3, 1, '2024-05-02');
INSERT INTO Enrollments VALUES (13, 4, 1, '2024-05-03');
INSERT INTO Enrollments VALUES (14, 5, 1, '2024-05-04');
INSERT INTO Enrollments (EnrolmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(15, 6, 1, '2024-05-05'),
(16, 7, 1, '2024-05-06'),
(17, 8, 1, '2024-05-07'),
(18, 9, 1, '2024-05-08'),
(19, 10, 1, '2024-05-09'),
(20, 2, 1, '2024-05-10'),
(21, 3, 1, '2024-05-11'),
(22, 4, 1, '2024-05-12'),
(23, 5, 1, '2024-05-13'),
(24, 6, 1, '2024-05-14'),
(25, 7, 1, '2024-05-15');
select * from courses;
select * from department;
select * from enrollments;
select * from instructors;

-- CRUD Operations on all tables
-- CRUD Operation on Students Table -- 
insert into students 
values (11, 'Daniel','Clark','daniel.clark@gmail.com','2001-02-14','2023-08-20'),
(12,'Sophia','Hall','sophia.hall@gmail.com','2002-09-05','2024-01-18');

select * from students;
INSERT INTO Courses (CourseID, CourseName, DepartmentID, Credits)
VALUES (11, 'Artificial Intelligence', 101, 4);

UPDATE Students
SET Email = 'newemail@gmail.com'
WHERE StudentID = 3;

DELETE FROM Students
WHERE StudentID = 10;

-- CRUD Operation on Courses Table -- 
INSERT INTO Courses (CourseID, CourseName, DepartmentID, Credits)
VALUES (11, 'Artificial Intelligence', 101, 4);

 
SELECT * FROM Courses;

UPDATE Courses
SET Credits = 5
WHERE CourseID = 2;

DELETE FROM Courses
WHERE CourseID = 11;

-- CRUD Operation on Department Table --
INSERT INTO Department (DepartmentID, DepartmentName)
VALUES (111, 'Psychology');  

SELECT * FROM Department;

UPDATE Department
SET DepartmentName = 'Business Studies'
WHERE DepartmentID = 104;

DELETE FROM Department
WHERE DepartmentID = 111;

-- CRUD Operation on Insructors Table --  
INSERT INTO Instructors (InstructureID, FirstName, LastName, Email, DepartmentID)
VALUES (11, 'George', 'King', 'george.king@gmail.com', 101);

SELECT * FROM Instructors;

UPDATE Instructors
SET Email = 'new.email@gmail.com'
WHERE InstructureID = 2;

DELETE FROM Instructors
WHERE InstructureID = 11;

-- CRUD Operation on Enrollment Table --
INSERT INTO Enrollments (EnrolmentID, StudentID, CourseID, EnrollmentDate)
VALUES (11, 1, 2, '2024-05-01');

SELECT * FROM Enrollments;

UPDATE Enrollments
SET CourseID = 3
WHERE EnrolmentID = 1;

DELETE FROM Enrollments
WHERE EnrolmentID = 11;
  
-- Retrive students enrolled after 2022.--
select * from  Enrollments 
where EnrollmentDate > '2022-12-31';

-- Retrive courses offred by the Mathematics department with a limit of 5 course.--
SELECT c.CourseName
FROM Courses c
JOIN Department d 
ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Mathematics'
LIMIT 5;

SELECT 
c.CourseName,
COUNT(e.StudentID) AS total_students
FROM Enrollments e
JOIN Courses c 
ON e.CourseID = c.CourseID
GROUP BY c.CourseName
HAVING COUNT(e.StudentID) > 0;

select * from Courses;

select * from Courses
where CourseName = 'SQL' and 'Data Structures';

SELECT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Database Systems', 'Data Structures')
GROUP BY s.StudentID, s.FirstName, s.LastName
HAVING COUNT(DISTINCT c.CourseName) = 2;

SELECT DISTINCT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Database Systems', 'Data Structures');

select CourseName ,avg(Credits)
from Courses
group by CourseName;

ALTER TABLE Instructors
ADD Salary DECIMAL(10,2);

UPDATE Instructors SET Salary = 50000 WHERE InstructureID = 1;
UPDATE Instructors SET Salary = 60000 WHERE InstructureID = 2;
UPDATE Instructors SET Salary = 55000 WHERE InstructureID = 3;
UPDATE Instructors SET Salary = 70000 WHERE InstructureID = 4;
UPDATE Instructors SET Salary = 65000 WHERE InstructureID = 5;

SELECT MAX(i.Salary) AS max_salary
FROM Instructors i
JOIN Department d 
ON i.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer Science';

SELECT d.DepartmentName,
COUNT(DISTINCT e.StudentID) AS total_students
FROM Department d
JOIN Courses c 
ON d.DepartmentID = c.DepartmentID
JOIN Enrollments e 
ON c.CourseID = e.CourseID
GROUP BY d.DepartmentName;

select s.FirstName ,s.LastName, c.CourseName
from Students s
inner join Enrollments e
on s.StudentID = s.StudentID
inner join Courses c
on e.CourseID = c.CourseID;


select s.FirstName ,s.LastName, c.CourseName
from Students s
left join Enrollments e
on s.StudentID = s.StudentID
left join Courses c
on e.CourseID = c.CourseID;

select distinct s.StudentID ,e.CourseID, s.FirstName, s.LastName 
from Students s
join Enrollments e
on s.StudentID = e.StudentID
where e.CourseID in (
		select CourseID
        from Enrollments e
        group by CourseID
        having count(StudentID) > 10
);

select StudentID,FirstName, year(EnrollmentDate) as Enroll_Year
from  Students;

select concat(FirstName ," " , LastName ) as Full_Name
from Students;

select * from Enrollments;
select EnrollmentDate, count(StudentID) as Enroll_total,
sum(count(StudentID)) over(Order by EnrollmentDate) as running_total
from Enrollments
group by EnrollmentDate;

SELECT StudentID, FirstName,LastName, EnrollmentDate,
    CASE 
        WHEN YEAR(CURDATE()) - YEAR(EnrollmentDate) > 4 
        THEN 'Senior'
        ELSE 'Junior'
    END AS Status
FROM Students;