-- Social Network
-- A new social network site has the following data tables:
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    sex ENUM('m', 'f')
);

CREATE TABLE friends (
    user1 INT,
    user2 INT,
    PRIMARY KEY(user1, user2),
    FOREIGN KEY(user1) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY(user2) REFERENCES users(id) ON DELETE CASCADE
);

DESCRIBE friends;
DESCRIBE users;
-- Fill tables
INSERT INTO users(name, sex) VALUES('Ann', NULL);
INSERT INTO users(name, sex) VALUES('Steve', 'm');
INSERT INTO users(name, sex) VALUES('Mary', 'f');
INSERT INTO users(name, sex) VALUES('Brenda', 'f');

INSERT INTO friends VALUES(1, 2);
INSERT INTO friends VALUES(1, 3);
INSERT INTO friends VALUES(2, 3);
-- Query
SELECT users.name, COUNT(*) AS myCount
FROM users
LEFT JOIN friends
ON users.id = friends.user1 OR users.id = friends.user2
WHERE users.sex = 'f'
GROUP BY users.id, users.name;



SELECT *
FROM users;

SELECT *
FROM friends;

DROP TABLE friends;