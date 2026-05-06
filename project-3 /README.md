University Course Management System (SQL Project)

Project Overview
This project is a relational database system for managing a university course system. It includes students, courses, departments, instructors, and enrollments with full SQL operations.

The project demonstrates SQL concepts like:
- Table creation with relationships
- CRUD operations
- Joins (INNER, LEFT)
- Subqueries
- Aggregate functions
- Window functions
- CASE expressions
- Date functions

---

 Database Name :-
 University_Course

 
---

Tables Created :-

1. Students
- StudentID (Primary Key)
- FirstName
- LastName
- Email
- BirthDate
- EnrollmentDate

2. Courses
- CourseID (Primary Key)
- CourseName
- DepartmentID
- Credits

3. Department
- DepartmentID (Primary Key)
- DepartmentName

4. Instructors
- InstructureID (Primary Key)
- FirstName
- LastName
- Email
- DepartmentID (Foreign Key)

5. Enrollments
- EnrolmentID (Primary Key)
- StudentID (Foreign Key)
- CourseID (Foreign Key)
- EnrollmentDate



Features Implemented :-

CRUD Operations
Performed on all tables:
- INSERT
- SELECT
- UPDATE
- DELETE

---

SQL Concepts Used :-

Joins :-
- INNER JOIN (students with courses)
- LEFT JOIN (all students with/without courses)

Subqueries :-
- Students enrolled in specific courses
- Courses with high enrollment

Aggregations :-
- COUNT of students per course
- Total students per department

Window Functions :-
- Running total of enrollments

CASE Expression :-
- Student classification:
  - Senior (more than 4 years)
  - Junior (less than 4 years)

Date Functions :-
- YEAR() used to extract enrollment year

---

Sample Queries :-

```sql
-- Students enrolled after 2022
SELECT * FROM Students
WHERE EnrollmentDate > '2022-12-31';

-- Running total of enrollments
SELECT EnrollmentDate,
COUNT(StudentID),
SUM(COUNT(StudentID)) OVER (ORDER BY EnrollmentDate)
FROM Enrollments
GROUP BY EnrollmentDate;

 
