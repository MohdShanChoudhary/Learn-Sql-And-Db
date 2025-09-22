CREATE TABLE FeePayments (
    payment_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    amount DECIMAL(10,2) CHECK (amount > 0),
    payment_date DATE
);

START TRANSACTION;

INSERT INTO FeePayments VALUES (1, 'Ashish', 5000.00, '2024-06-01');
INSERT INTO FeePayments VALUES (2, 'Smaran', 4500.00, '2024-06-02');
INSERT INTO FeePayments VALUES (3, 'Vaibhav', 5500.00, '2024-06-03');
COMMIT;

SELECT * FROM FeePayments;
