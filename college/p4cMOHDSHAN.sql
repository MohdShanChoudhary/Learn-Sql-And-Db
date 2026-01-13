-- ==============================================
-- Setup: Create Table and Insert Sample Data
-- ==============================================
DROP TABLE IF EXISTS StudentEnrollments;

CREATE TABLE StudentEnrollments (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course_id VARCHAR(10),
    enrollment_date DATE
);

INSERT INTO StudentEnrollments VALUES
(1, 'Ashish', 'CSE101', '2024-06-01'),
(2, 'Smaran', 'CSE102', '2024-06-01'),
(3, 'Vaibhav', 'CSE103', '2024-06-01');

-- ==============================================
-- Part A: Deadlock Simulation
-- ==============================================
-- Open Session 1
START TRANSACTION;
UPDATE StudentEnrollments SET enrollment_date = '2024-07-01' WHERE student_id = 1;

-- At this point, Session 1 has locked row with student_id=1
-- Now open Session 2
START TRANSACTION;
UPDATE StudentEnrollments SET enrollment_date = '2024-07-02' WHERE student_id = 2;

-- Now back in Session 1
UPDATE StudentEnrollments SET enrollment_date = '2024-07-03' WHERE student_id = 2;

-- Now in Session 2
UPDATE StudentEnrollments SET enrollment_date = '2024-07-04' WHERE student_id = 1;
-- This creates a deadlock, one transaction will be aborted automatically.
COMMIT;

-- ==============================================
-- Part B: MVCC Simulation (Non-blocking Reads)
-- ==============================================
-- Session 1 (Reader)
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
START TRANSACTION;
SELECT * FROM StudentEnrollments WHERE student_id = 1;
-- Output: enrollment_date = 2024-06-01 (snapshot view)

-- Session 2 (Writer, concurrently)
START TRANSACTION;
UPDATE StudentEnrollments SET enrollment_date = '2024-07-10' WHERE student_id = 1;
COMMIT;

-- Back to Session 1 (still sees old value)
SELECT * FROM StudentEnrollments WHERE student_id = 1;
-- Output: enrollment_date = 2024-06-01
COMMIT;

-- ==============================================
-- Part C: Locking vs MVCC Behavior
-- ==============================================

-- Case 1: Without MVCC (Explicit Locking)
-- Session 1
START TRANSACTION;
SELECT * FROM StudentEnrollments WHERE student_id = 1 FOR UPDATE;
-- Locks row, any reader will wait.

-- Session 2 (Blocked until Session 1 commits)
START TRANSACTION;
SELECT * FROM StudentEnrollments WHERE student_id = 1;
-- Reader blocked here (locking behavior)

-- Case 2: With MVCC (Normal Read)
-- Session 1
START TRANSACTION;
UPDATE StudentEnrollments SET enrollment_date = '2024-07-15' WHERE student_id = 1;

-- Session 2 (Reader sees snapshot, not blocked)
START TRANSACTION;
SELECT * FROM StudentEnrollments WHERE student_id = 1;
-- Output: enrollment_date = 2024-07-10 (snapshot value before update)

-- Commit writer, reader still unaffected until its commit
COMMIT;
