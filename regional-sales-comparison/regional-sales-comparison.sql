-- Write only the SQL statement that solves the problem and nothing else
-- Select the average sales per region and group by region id and region name
-- Aggregate function SUM(sales.amount) used as employees can have multiple sales
WITH SalesAverage AS (
  SELECT regions.name as Region,
  CASE
  	WHEN SUM(IFNULL(sales.amount,0)) = 0 THEN 0
    ELSE SUM(IFNULL(sales.amount,0))/COUNT(DISTINCT employees.id)
  END AS RegionAverage
  FROM regions
  LEFT JOIN states ON regions.id = states.regionid
  LEFT JOIN employees ON states.id = employees.stateid
  LEFT JOIN sales ON employees.id = sales.employeeId
  GROUP BY regions.id, regions.name)
SELECT Region, RegionAverage, ((SELECT MAX(RegionAverage) FROM SalesAverage) - RegionAverage) AS RegionalPerformance
FROM SalesAverage
GROUP BY Region;