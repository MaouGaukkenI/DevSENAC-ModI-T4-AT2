DELIMITER //
	CREATE FUNCTION clientesPremium(cliente_id INT) RETURNS VARCHAR(15) DETERMINISTIC
    BEGIN
		DECLARE totalCompras DECIMAL(24, 2); 
        SET totalCompras = (
			SELECT SUM(valor_total)
            FROM venda
            WHERE cliente_id = cliente_id
		);
        
        IF totalCompras > 10000 THEN
			RETURN 'PREMIUM';
		ELSE
			RETURN 'REGULAR';
		END IF;
    END//
DELIMITER ;

SELECT id, clientesPremium(id) AS tipo_cliente
FROM cliente;