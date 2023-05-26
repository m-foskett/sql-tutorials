-- Write only the SQL statement that solves the problem and nothing else
UPDATE enrollments
SET enrollments.year = 2015
WHERE enrollments.id BETWEEN 20 AND 100;