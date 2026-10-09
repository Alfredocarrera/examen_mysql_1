INSERT INTO bebidas(nombre_bebida, tamaño_bebida, modificacion_bebida, stock_bebida, precio_bebida) VALUES
('Coca-Cola', '500ml', 'Sin modificaciones', 100, 5.50),
('Pepsi', '500ml', 'Sin modificaciones', 80, 5.40),
('Fanta', '500ml', 'Sin hielo', 60, 4.30);

select * from bebidas;

USE Pizzeria;
INSERT INTO pizzas(nombre_pizza, tamaño_pizza, modificacion_pizza, stock_pizza, precio_pizza) VALUES
('Margarita', 'Mediana', 'Sin modificaciones', 50, 12.00),
('Pepperoni', 'Grande', 'Extra queso', 30, 15.00),
('Hawaiana', 'Familiar', 'Sin piña', 20, 18.00);
select * from pizzas;

INSERT INTO panzarottis(nombre_panzarotti, tamaño_panzarotti, modificacion_panzarotti, stock_panzarotti, precio_panzarotti) VALUES
('Panzarotti de Queso', 'Mediano', 'Sin modificaciones', 40, 10.00),
('Panzarotti de Jamón y Queso', 'Grande', 'Extra jamón', 25, 12.50),
('Panzarotti Vegetariano', 'Familiar', 'Sin champiñones', 15, 14.00);
select * from panzarottis;

INSERT INTO postres(nombre_postre, stock_postre, precio_postre) VALUES
('Tiramisú', 30, 6.00),
('Cheesecake', 20, 5.50),
('Brownie', 25, 4.00);


INSERT INTO Snacks(nombre_snack, stock_snack, precio_snack) VALUES
('Papas Fritas', 50, 3.00),
('Aros de Cebolla', 40, 4.00),
('Nachos con Queso', 30, 5.00);
select * from Snacks;

INSERT INTO Productos(nombre_producto, id_panzarotti, id_pizza, id_bebida, id_postre, id_snack) VALUES
('Combo 1', 1, 1, 1, 1, 1),
('Combo 2', 2, 2, 2, 2, 2),
('Combo 3', 3, 3, 3, 3, 3);
select * from Productos;

INSERT INTO Commbos(nombre_combo, id_producto) VALUES
('Combo Familiar', 1),
('Combo Pareja', 2),
('Combo Individual', 3);


INSERT INTO Menu(nombre_menu, id_combo) VALUES
('Menú del Día', 1),
('Menú Especial', 2),
('Menú Económico', 3);


INSERT INTO Direcciones (Ciudad, Zona, Calle, Avenida, Numero_de_Casa) VALUES
('Ciudad A', 'Zona 1', 'Calle 1', 'Avenida 1', '101'),
('Ciudad B', 'Zona 2', 'Calle 2', 'Avenida 2', '202'),
('Ciudad C', 'Zona 3', 'Calle 3', 'Avenida 3', '303');


INSERT INTO Clientes (Nombre, Apellido, Telefono, Correo_Electronico, Direccion_ID) VALUES
('Juan', 'Pérez', '123456789', 'juan_p@gmail.com', 1),
('María', 'Gómez', '987654321', 'maria_g@gmail.com', 2),
('Carlos', 'López', '456789123', 'carlos_l@gmail.com', 3);


INSERT INTO Pedidos (id_menu, id_menu, id_cliente, consumo_pedido, total_pedido, estado_Pedido, fecha_Pedido) VALUES
(1, 1, 1, 'Para llevar', 25.50, 'En preparación', '2024-06-01 10:00:00'),
(2, 2, 2, 'En el local', 30.00, 'Entregado', '2024-06-02 12:30:00'),
(3, 3, 3, 'Para llevar', 20.00, 'Cancelado', '2024-06-03 15:45:00');
