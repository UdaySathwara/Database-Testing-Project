
-- NOTE: CRUD operations are typically performed via UI or API in real-world applications.
-- In this project, CRUD testing is executed directly at the database level using SQL queries.
-- This approach ensures backend data validation.
-- It helps verify data insertion, retrieval, update, and deletion at the database layer.

USE Ecom_Project;

-- TC001 --
-- Insert record into users table --

INSERT INTO users(user_id,name,email,password,phone) 
VALUES (1,'Uday','uday@mail.com','12345','9999999999');

-- TC002 --
-- Read data from users table --

SELECT * FROM users;
SELECT * FROM users WHERE user_id=1;

-- TC003 --
-- Update user data --

UPDATE users SET name='Rohan' WHERE user_id=1;

-- TC004 --
-- Delete user record --
DELETE FROM users WHERE user_id=1; 

SELECT * FROM users;