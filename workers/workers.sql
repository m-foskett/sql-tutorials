-- Write only the SQL statement that solves the problem and nothing else
-- Select the names of employees whose id is not in the distinct set of managerIds
-- Account for NULL value for managerId by adding IFNULL function
SELECT name
FROM employees
WHERE id NOT IN (SELECT DISTINCT IFNULL(managerId, "No Manager") FROM employees)