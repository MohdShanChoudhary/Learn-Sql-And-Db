DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Departments;
CREATE TABLE Departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Courses (
course_id INT PRIMARY KEY,
course_title VARCHAR(100) NOT NULL,
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);
INSERT INTO Departments (dept_id, dept_name) VALUES
(1, 'Computer Science'),
(2, 'Electronics'),
(3, 'Mechanical');

INSERT INTO Courses (course_id, course_title, dept_id) VALUES
(101, 'DBMS', 1),
(102, 'Operating Systems', 1),
(103, 'Computer Networks', 1),
(104, 'Digital Circuits', 2),
(105, 'Microprocessors', 2),
(106, 'Thermodynamics', 3);

SELECT dept_name
FROM Departments
WHERE dept_id IN (
SELECT dept_id
FROM Courses
GROUP BY dept_id
HAVING COUNT(course_id) > 2
);
SELECT* FROM Courses;
SELECT* FROM Departments;

GRANT SELECT ON Courses TO 'viewer_user';