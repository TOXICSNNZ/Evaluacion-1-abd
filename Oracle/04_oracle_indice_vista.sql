-- SCRIPT 04 INDICE Y VISTA

-- INDICE
-- Facilita las consultas que buscan pedidos por cliente

CREATE INDEX IDX_PEDIDOS_CLIENTE_EP1_EQUIPO_08
ON PEDIDOS_EP1_EQUIPO_08(id_cliente);


-- VISTA
-- Resumen de pedidos añadiendo clientes y pedidos

CREATE OR REPLACE VIEW VW_RESUMEN_PEDIDOS_EP1_EQUIPO_08 AS
SELECT
    p.id_pedido,
    c.id_cliente,
    c.nombre AS nombre_cliente,
    c.email,
    p.fecha,
    p.total
FROM CLIENTES_EP1_EQUIPO_08 c
INNER JOIN PEDIDOS_EP1_EQUIPO_08 p
    ON c.id_cliente = p.id_cliente;