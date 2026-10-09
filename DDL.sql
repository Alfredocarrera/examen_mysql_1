CREATE DATABASE Pizzeria;

USE Pizzeria;

CREATE TABLE bebidas (
    id_bebidas INT PRIMARY KEY AUTO_INCREMENT,
    nombre_bebida VARCHAR(100) NOT NULL,
    tamaño_bebida VARCHAR(100) NOT NULL,
    modificacion_bebida VARCHAR(100) NOT NULL,
    stock_bebida INT NOT NULL,
    precio_bebida DECIMAL(10, 2) NOT NULL
);

CREATE TABLE pizzas (
    id_pizzas INT PRIMARY KEY AUTO_INCREMENT,
    nombre_pizza VARCHAR(100) NOT NULL,
    tamaño_pizza VARCHAR(100) NOT NULL,
    modificacion_pizza VARCHAR(100) NOT NULL,
    stock_pizza INT NOT NULL,
    precio_pizza DECIMAL(10, 2) NOT NULL
);

CREATE TABLE panzarottis (
    id_panzarotti INT PRIMARY KEY AUTO_INCREMENT,
    nombre_panzarotti VARCHAR(100) NOT NULL,
    tamaño_panzarotti VARCHAR(200) NOT NULL,
    modificacion_panzarotti VARCHAR(100) NOT NULL,
    stock_panzarotti INT NOT NULL,
    precio_panzarotti DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Postres (
    id_postres INT PRIMARY KEY AUTO_INCREMENT,
    nombre_postre VARCHAR(100) NOT NULL,
    stock_postre INT NOT NULL,
    precio_postre DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Snacks (
    id_snacks INT PRIMARY KEY AUTO_INCREMENT,
    nombre_snack VARCHAR(100) NOT NULL,
    stock_snack INT NOT NULL,
    precio_snack DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre_producto VARCHAR(100) NOT NULL,
    id_panzarotti INT ,
    id_pizza INT ,
    id_bebida INT ,
    id_postre INT ,
    id_snack INT ,
    FOREIGN KEY (id_panzarotti) REFERENCES panzarottis(id_panzarotti),
    FOREIGN KEY (id_pizza) REFERENCES pizzas(id_pizzas),
    FOREIGN KEY (id_bebida) REFERENCES bebidas(id_bebidas),
    FOREIGN KEY (id_postre) REFERENCES Postres(id_postres),
    FOREIGN KEY (id_snack) REFERENCES Snacks(id_snacks) 
);


CREATE TABLE Combos (
    id_combo INT PRIMARY KEY AUTO_INCREMENT,
    nombre_combo VARCHAR(100) NOT NULL,
    id_producto INT NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);


CREATE TABLE Menu (
    id_menu INT PRIMARY KEY AUTO_INCREMENT,
    id_producto INT NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);


CREATE TABLE Direcciones (
    id_direccion INT PRIMARY KEY AUTO_INCREMENT,
    ciudad VARCHAR(100) NOT NULL,
    zona VARCHAR(100) NOT NULL,
    calle VARCHAR(100) NOT NULL,
    avenida VARCHAR(100) NOT NULL,
    numero_casa VARCHAR(100) NOT NULL
);

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre_cliente VARCHAR(100) NOT NULL,
    telefono_cliente VARCHAR(100) NOT NULL,
    correo_cliente VARCHAR(100) NOT NULL UNIQUE,
    id_direccion INT NOT NULL,
    FOREIGN KEY (id_direccion) REFERENCES Direcciones(id_direccion)
);


CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_menu INT NOT NULL,
    id_cliente INT NOT NULL,
    consumo_pedido VARCHAR(100) NOT NULL,
    total_pedido DECIMAL(10, 2) NOT NULL,
    estado_pedido VARCHAR(100) NOT NULL,
    fecha_pedido DATETIME NOT NULL,
    FOREIGN KEY (id_menu) REFERENCES Menu(id_menu)
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
