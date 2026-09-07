-- SCRIPT 03 DATOS DE PRUEBA PARA LAS TABLAS

-- CLIENTES

INSERT INTO CLIENTES_EP1_EQUIPO_08
(id_cliente, nombre, email)
VALUES
(1, 'Sebastian Soto', 'seba.soto@email.com');

INSERT INTO CLIENTES_EP1_EQUIPO_08
(id_cliente, nombre, email)
VALUES
(2, 'Franco Gonzalez', 'franco.gonzalez@email.com');

INSERT INTO CLIENTES_EP1_EQUIPO_08
(id_cliente, nombre, email)
VALUES
(3, 'Sebastian Ortiz', 'seba.ortiz@email.com');

INSERT INTO CLIENTES_EP1_EQUIPO_08
(id_cliente, nombre, email)
VALUES
(4, 'Juan Perez', 'juan.perez@email.com');


-- PEDIDOS

INSERT INTO PEDIDOS_EP1_EQUIPO_08
(id_pedido, id_cliente, fecha, total)
VALUES
(1, 1, DATE '2026-09-01', 50000);

INSERT INTO PEDIDOS_EP1_EQUIPO_08
(id_pedido, id_cliente, fecha, total)
VALUES
(2, 2, DATE '2026-09-02', 75000);

INSERT INTO PEDIDOS_EP1_EQUIPO_08
(id_pedido, id_cliente, fecha, total)
VALUES
(3, 3, DATE '2026-09-03', 120000);

INSERT INTO PEDIDOS_EP1_EQUIPO_08
(id_pedido, id_cliente, fecha, total)
VALUES
(4, 1, DATE '2026-09-04', 35000);


-- PAGOS

INSERT INTO PAGOS_EP1_EQUIPO_08
(id_pago, id_pedido, monto, fecha)
VALUES
(1, 1, 50000, DATE '2026-09-01');

INSERT INTO PAGOS_EP1_EQUIPO_08
(id_pago, id_pedido, monto, fecha)
VALUES
(2, 2, 75000, DATE '2026-09-02');

INSERT INTO PAGOS_EP1_EQUIPO_08
(id_pago, id_pedido, monto, fecha)
VALUES
(3, 3, 60000, DATE '2026-09-03');


COMMIT;