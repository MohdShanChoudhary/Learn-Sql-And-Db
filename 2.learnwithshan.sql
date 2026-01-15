-- constraint- something that limits you 
-- primery key , not null , unique ,default - 'active ' or we can use now ,check - you can check condition  , forgen key
CREATE TABLE con (
  id INT PRIMARY KEY,
  name VARCHAR(10) NOT NULL,
  gmail VARCHAR(20) UNIQUE,
  gender VARCHAR(20) DEFAULT 'male',
  age INT CHECK (age >= 18)
);

INSERT INTO con (id, name, gmail, gender, age)
VALUES (12, 'shan', 'shanj@gmail.com', 'female', 78);
INSERT INTO con (id, name, gmail, age)
VALUES (1, 'Shan', 'shan@gmail.com', 22);
INSERT INTO con (id, name, gmail, gender, age)
VALUES (2, 'Aman', 'aman@gmail.com', 'female', 20);

select * from con;

-- SHOW DATABASES(use in my sql ); == \l  (this  is  use in postgresqsl )


