--CREATE (INSERT)
INSERT INTO Students
(roll_no, Name, Email, age, dept_id)
VALUES
('106', 'shivani', 'shivani@gmail.com', 20, 1);

SELECT * FROM Students;

SELECT * FROM Enrollments 
WHERE marks > 80;

UPDATE Enrollments
SET marks = 95
WHERE student_id = 1
AND course_id = 1;

DELETE FROM Students
WHERE student_id = 5;

--Display Student Names with Department Names
SELECT 
s.name,
d.dept_name
FROM Students s
INNER JOIN Departments d
ON s.dept_id = d.dept_id

-- Display Student Names with Course Names
SELECT 
s.name,
c.course_name,
e.marks
FROM Students s
INNER JOIN Enrollments e
ON s.student_id = e.student_id
INNER JOIN Courses c
ON e.course_id = c.course_id

-- Find Average Marks of Each Student
SELECT
    s.name,
    AVG(e.marks) AS average_marks
FROM Students s
JOIN Enrollments e
ON s.student_id = e.student_id
GROUP BY s.student_id, s.name;

-- Find Students Scoring More Than 85
SELECT
    s.name,
    e.marks
FROM Students s
JOIN Enrollments e
ON s.student_id = e.student_id
WHERE e.marks > 85;

--Create a student results view
CREATE VIEW StudentResults AS
SELECT
    s.name AS StudentName,
    c.course_name AS CourseName,
    e.marks AS Marks,
    e.grade AS Grade
FROM Students s
JOIN Enrollments e 
ON s.student_id = e.student_id
JOIN Courses c 
ON e.course_id = c.course_id;