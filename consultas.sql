-- Consultas Kelvia --

-- Personales --

-- Unión Kelvia --

SELECT * FROM clientes
    WHERE numero_telefono IS NOT NULL
    UNION
    SELECT * FROM clientes
    WHERE correo_electronico LIKE '%@gmail.com';

-- Intersección Kelvia --

SELECT * FROM clientes WHERE numero_telefono IS NOT NULL INTERSECT SELECT * FROM clientes WHERE correo_electronico L
IKE '%@gmail.com';

-- Diferencia Kelvia --

SELECT cliente_id, codigo_cliente, nombre_completo, correo_electronico, numero_telefono
FROM clientes
WHERE correo_electronico IS NOT NULL
EXCEPT
SELECT cliente_id, codigo_cliente, nombre_completo, correo_electronico, numero_telefono
FROM clientes
WHERE correo_electronico IS NOT NULL AND numero_telefono IS NOT NULL;

-- Agregación Kelvia --

SELECT COUNT(*) AS clientes_con_telefono
FROM clientes
WHERE numero_telefono IS NOT NULL;

-- Grupales --

-- Reunion natural Kelvia --

 SELECT * FROM clientes NATURAL JOIN boleto;

-- Reunion natural por la izquierda Kelvia --

SELECT *
FROM clientes
LEFT JOIN boleto
ON clientes.cliente_id = boleto.cliente_id;

-- Reunion natural por la derecha Kelvia --

SELECT *
FROM clientes
RIGHT JOIN boleto
ON clientes.cliente_id = boleto.cliente_id;

-- Producto cartesiano Kelvia --

SELECT *
FROM clientes
CROSS JOIN boleto;
