CREATE PROCEDURE ItemsBought (@date DATE) AS
BEGIN
	SELECT DAY(dateBought), MONTH(dateBought), name
	FROM items
	WHERE dateBought BETWEEN @date AND DATEADD(month, 1, @date);
END;