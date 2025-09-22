-- Create Table with Unique Constraint
CREATE TABLE StudentEnrollments (
    enrollment_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course_id VARCHAR(10),
    enrollment_date DATE,
    CONSTRAINT unique_enrollment UNIQUE (student_name, course_id)
);

-- Insert initial data
INSERT INTO StudentEnrollments VALUES (1, 'Ashish', 'CSE101', '2024-07-01');
INSERT INTO StudentEnrollments VALUES (2, 'Smaran', 'CSE102', '2024-07-01');
INSERT INTO StudentEnrollments VALUES (3, 'Vaibhav', 'CSE101', '2024-07-01');

-- Transaction simulation (two users trying same insert)
START TRANSACTION;
INSERT INTO StudentEnrollments VALUES (4, 'Ashish', 'CSE101', '2024-07-02'); -- User A
COMMIT;

START TRANSACTION;
INSERT INTO StudentEnrollments VALUES (5, 'Ashish', 'CSE101', '2024-07-02'); -- User B (Fails due to UNIQUE)
COMMIT;
