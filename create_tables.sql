CREATE TABLE Departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Roll_no INT UNIQUE NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    age INT CHECK (age >= 16),
    dept_id int,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT ,
    course_id INT,
    marks DECIMAL(5,2) CHECK (marks >= 0 AND marks <= 100),
    grade VARCHAR(2) CHECK (grade IN ('A', 'B', 'C', 'D', 'F', 'A+', 'B+', 'C+', 'D+')),
    FOREIGN KEY (student_id) REFERENCES Students(StudentID),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
    UNIQUE (student_id, course_id)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(10) UNIQUE NOT NULL,
    credits INT CHECK (credits > 0),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);