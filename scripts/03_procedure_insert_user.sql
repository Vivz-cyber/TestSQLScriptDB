CREATE PROCEDURE sp_insert_user (
    IN in_firstname VARCHAR(50),
    IN in_lastname VARCHAR(50),
    IN in_username VARCHAR(50),
    IN in_phone VARCHAR(15),
    IN in_email VARCHAR(100)
)
BEGIN
    INSERT INTO user_table (firstname, lastname, username, phone, email)
    VALUES (in_firstname, in_lastname, in_username, in_phone, in_email);
END$$

