--Productos más vendidos (pizza, panzarottis, bebidas, etc.)

SELECT 
    categoria,
    nombre_especifico,
    total_vendidos
FROM (
    -- Pizzas
    SELECT 
        'Pizza' AS categoria,
        pz.nombre_pizza AS nombre_especifico,
        COUNT(p.id_pedido) AS total_vendidos
    FROM Pedidos p
    JOIN Menu m ON p.id_menu = m.id_menu
    JOIN Productos pr ON m.id_producto = pr.id_producto
    JOIN pizzas pz ON pr.id_pizza = pz.id_pizzas
    GROUP BY pz.id_pizzas, pz.nombre_pizza

    UNION ALL

    -- Bebidas
    SELECT 
        'Bebida' AS categoria,
        b.nombre_bebida AS nombre_especifico,
        COUNT(p.id_pedido) AS total_vendidos
    FROM Pedidos p
    JOIN Menu m ON p.id_menu = m.id_menu
    JOIN Productos pr ON m.id_producto = pr.id_producto
    JOIN bebidas b ON pr.id_bebida = b.id_bebidas
    GROUP BY b.id_bebidas, b.nombre_bebida

    UNION ALL

    -- Panzarottis
    SELECT 
        'Panzarotti' AS categoria,
        pan.nombre_panzarotti AS nombre_especifico,
        COUNT(p.id_pedido) AS total_vendidos
    FROM Pedidos p
    JOIN Menu m ON p.id_menu = m.id_menu
    JOIN Productos pr ON m.id_producto = pr.id_producto
    JOIN panzarottis pan ON pr.id_panzarotti = pan.id_panzarotti
    GROUP BY pan.id_panzarotti, pan.nombre_panzarotti

    UNION ALL

    -- Postres
    SELECT 
        'Postre' AS categoria,
        pos.nombre_postre AS nombre_especifico,
        COUNT(p.id_pedido) AS total_vendidos
    FROM Pedidos p
    JOIN Menu m ON p.id_menu = m.id_menu
    JOIN Productos pr ON m.id_producto = pr.id_producto
    JOIN Postres pos ON pr.id_postre = pos.id_postres
    GROUP BY pos.id_postres, pos.nombre_postre

    UNION ALL

    -- Snacks
    SELECT 
        'Snack' AS categoria,
        sn.nombre_snack AS nombre_especifico,
        COUNT(p.id_pedido) AS total_vendidos
    FROM Pedidos p
    JOIN Menu m ON p.id_menu = m.id_menu
    JOIN Productos pr ON m.id_producto = pr.id_producto
    JOIN Snacks sn ON pr.id_snack = sn.id_snacks
    GROUP BY sn.id_snacks, sn.nombre_snack
) AS productos_unificados
ORDER BY total_vendidos DESC
LIMIT 1;