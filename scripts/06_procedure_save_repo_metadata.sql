CREATE PROCEDURE sp_save_repo_metadata (
    IN p_repo_name VARCHAR(255),
    IN p_local_path TEXT,
    IN p_github_url TEXT,
    IN p_build_type VARCHAR(50),
    IN p_username VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_created_at DATETIME,
    IN p_updated_at DATETIME
)
BEGIN
    INSERT INTO git_repo_metadata (
        repo_name, local_path, github_url, build_type, username, email, created_at, updated_at
    ) VALUES (
        p_repo_name, p_local_path, p_github_url, p_build_type, p_username, p_email, p_created_at, p_updated_at
    );
END;
