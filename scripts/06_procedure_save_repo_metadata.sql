CREATE PROCEDURE sp_save_repo_metadata (
    IN in_username VARCHAR(50),
    IN in_email VARCHAR(100),
    IN in_repo_name VARCHAR(255),
    IN in_local_path TEXT,
    IN in_github_url TEXT,
    IN in_build_type VARCHAR(50)
)
BEGIN
    INSERT INTO repo_metadata (
        username, email, repo_name, local_path, github_url, build_type
    ) VALUES (
        in_username, in_email, in_repo_name, in_local_path, in_github_url, in_build_type
    );
END$$
