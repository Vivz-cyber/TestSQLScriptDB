USE user_1_db;

CREATE TABLE IF NOT EXISTS sql_script_metadata (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    script_name VARCHAR(255),
    local_path TEXT,
    github_url TEXT,
    definition_type ENUM('table', 'procedure') NOT NULL,
    definition_name VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
