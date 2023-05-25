-- Create Student Table
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(25),
    major VARCHAR(20)
);
-- Describe the student table
DESCRIBE student;
-- Drop the student table
DROP TABLE student;
-- Add another column
ALTER TABLE student ADD gpa DECIMAL(3,2);
-- Drop a specific column
ALTER TABLE student DROP COLUMN gpa;