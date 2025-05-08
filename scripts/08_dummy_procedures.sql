DROP PROCEDURE IF EXISTS sp_get_all_products;
CREATE PROCEDURE sp_get_all_products()
BEGIN
    SELECT * FROM product;
END;

DROP PROCEDURE IF EXISTS sp_place_order;
CREATE PROCEDURE sp_place_order (
    IN in_product_id INT,
    IN in_quantity INT
)
BEGIN
    INSERT INTO orders (product_id, quantity, order_date)
    VALUES (in_product_id, in_quantity, CURDATE());
END;
