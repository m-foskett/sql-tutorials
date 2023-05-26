-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Initializing Data
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Constraint Examples
-- NOT NULL
-- UNIQUE
-- DEFAULT 'defaultValue'
-- AUTO_INCREMENT
-- Create Student Table
CREATE TABLE student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(25) UNIQUE NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided'
);
-- Describe the student table
DESCRIBE student;
-- Drop the student table
DROP TABLE student;
-- Add another column
ALTER TABLE student 
ADD gpa DECIMAL(3,2);
-- Drop a specific column
ALTER TABLE student 
DROP COLUMN gpa;
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Inserting Data
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Insert into all columns
INSERT INTO student(name, major, gpa) VALUES('Bobby', 'Music', '3.50');
INSERT INTO student(name, major, gpa) VALUES('Pablo', 'Computer Science', '3.50');
-- Insert into specific columns
INSERT INTO student(name, gpa) VALUES('Mr. Magoo', '4.00');
INSERT INTO student(name, major, gpa) VALUES('Jackie', 'Philosophy', '3.58');
INSERT INTO student(name, major, gpa) VALUES('Barney', 'Biology', '4.20');
INSERT INTO student(name, gpa) VALUES('Chad', '4.20');
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Updating Data
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Update records for specific columns
UPDATE student
SET major = 'Biological Sciences'
WHERE major = 'Biology';
-- More complex conditions
-- Example 1
UPDATE student
SET major = 'Software'
WHERE student_id = 1;
-- Example 2
UPDATE student
SET major = 'CompSci/Software'
WHERE major = 'Computer Science' OR major = 'Software';
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Deleting Data
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Example 1
DELETE FROM student 
WHERE (student_id = 6);
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Selecting Data
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Get all cols for all records
SELECT * 
FROM student;
-- Get certain cols for all records, order them by major alphabetically (default ASC)
SELECT name, major
FROM student
AS BasicInfo
ORDER BY major ASC;
-- Only get certain amount of records
SELECT *
FROM student
ORDER BY major DESC
LIMIT 5;
-- More Complex Filtering Examples
-- Example 1
SELECT *
FROM student
WHERE major = 'Music' OR major = 'Philosophy';
-- Example 2
SELECT *
FROM student
WHERE major != 'Philosophy';
-- Example 3
SELECT *
FROM student
WHERE student_id BETWEEN 2 AND 5;
-- Example 4
SELECT *
FROM student
WHERE major IN ('CompSci/Software', 'Biological Sciences');