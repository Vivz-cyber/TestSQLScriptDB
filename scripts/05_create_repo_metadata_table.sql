USE user_1_db;

CREATE TABLE IF NOT EXISTS repo_metadata (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    repo_name VARCHAR(255),
    local_path TEXT,
    github_url TEXT,
    build_type ENUM('maven', 'gradle', 'Both_Maven_Gradle', 'unknown'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
