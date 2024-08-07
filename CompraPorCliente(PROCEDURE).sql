USE uc4atividades;

DELIMITER //

CREATE PROCEDURE ComprasPorCliente(IN cliente_id INT, IN data_inicio DATE, IN data_fim DATE)
BEGIN
    SELECT c.nome, v.id, v.valor_total,
           iv.nome_produto, iv.quantidade
    FROM venda v
    JOIN cliente c ON v.cliente_id = c.id
    JOIN item_venda iv ON v.id = iv.venda_id
    WHERE c.id = cliente_id
    AND v.data BETWEEN data_inicio AND data_fim;
END //

DELIMITER ;

SELECT ComprasPorCliente(1, '2018-01-01', '2023-07-19')