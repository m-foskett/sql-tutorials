-- Write only the SQL statement that solves the problem and nothing else
-- HAVING USED as aggregate functions cannot be used with WHERE keyword
SELECT userId, AVG(duration)
FROM sessions
GROUP BY userId 
HAVING COUNT(*) > 1;