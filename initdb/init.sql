DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, email) VALUES
('alice', 'alice@example.com'),
('toto', 'toto@yahoo.com'),
('titi', 'titi@yahoo.com'),
('bob', 'bob@example.com'),
('charlie', 'charlie@example.com');
