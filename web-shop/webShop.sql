-- Write only the SQL statement that solves the problem and nothing else
SELECT items.name, sellers.name
FROM items
INNER JOIN sellers ON items.sellerId=sellers.id
WHERE sellers.rating > 4;