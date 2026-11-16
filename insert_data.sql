INSERT INTO Departments (dept_name)
VALUES
('Computer Science'),
('Information Technology'),
('Electronics');

INSERT INTO students
(roll_no, Name, Email, Phone, age, dept_id)
VALUES
('101', 'Rahul', 'rahul@gmail.com', '9876543210', 20, 1),
('102', 'Priya', 'priya@gmail.com', '9876543211', 21, 1),
('103', 'Aman', 'aman@gmail.com', '9876543212', 20, 2),
('104', 'Neha', 'neha@gmail.com', '9876543213', 19, 2),
('105', 'Riya', 'riya@gmail.com', '9876543214', 21, 3);

INSERT INTO Courses (course_name, course_code, credits, dept_id)
VALUES
('Java Programming', 'CS101', 4, 1),
('Database Management', 'CS102', 4, 1),
('Web Development', 'IT101', 3, 2),
('Computer Networks', 'IT102', 3, 2);

INSERT INTO Enrollments (student_id, course_id, marks, grade)
VALUES
(1, 1, 85, 'A'),
(1, 2, 90, 'A+'),
(2, 1, 95, 'A+'),
(2, 2, 88, 'A'),
(3, 3, 75, 'B'),
(4, 3, 80, 'A');