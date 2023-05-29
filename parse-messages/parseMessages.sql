CREATE PROCEDURE ParseMessages AS
BEGIN
	INSERT INTO notifications(id, message)
	SELECT id, data
	FROM messages
	WHERE type = 'notification'
	INSERT INTO alerts(id, shortMessage)
	SELECT id, LEFT(data, 15)
	FROM messages
	WHERE type = 'alert';
END;