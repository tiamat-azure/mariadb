DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$

CREATE PROCEDURE generate_users(IN num_users INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    
    WHILE i < num_users DO
        INSERT INTO users (username, email)
        VALUES (
            CONCAT('user_', FLOOR(RAND() * 1000)),
            CONCAT('user_', FLOOR(RAND() * 1000), '@yahoo.com')
        );
        SET i = i + 1;
    END WHILE;
END $$

DELIMITER ;

CALL generate_users(10);

