create database clase5marzo;
use clase5marzo;

CREATE TABLE Departamentos (
  id_departamento INT PRIMARY KEY NOT NULL,
  nombre_departamento VARCHAR(255) NOT NULL,
  ubicacion VARCHAR(255) NOT NULL
);

CREATE TABLE Empleados (
  id_empleado INT PRIMARY KEY NOT NULL auto_increment,
  nombre VARCHAR(255) NOT NULL,
  apellido VARCHAR(255) NOT NULL,
  salario DECIMAL(10,2) NOT NULL,
  id_departamento INT NOT NULL,
  FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);

INSERT INTO Departamentos (id_departamento, nombre_departamento, ubicacion) VALUES
(1, 'Ventas', 'Madrid'),
(2, 'Marketing', 'Barcelona'),
(3, 'Recursos Humanos', 'Sevilla'),
(4, 'Finanzas', 'Valencia'),
(5, 'Producción', 'Bilbao'),
(6, 'IT', 'Málaga'),
(7, 'Logística', 'Zaragoza'),
(8, 'Atención al cliente', 'Murcia'),
(9, 'Compras', 'A Coruña'),
(10, 'Legal', 'Palma de Mallorca'),
(11, 'Comunicación', 'Las Palmas de Gran Canaria'),
(12, 'Desarrollo de Negocio', 'Santa Cruz de Tenerife'),
(13, 'Investigación y Desarrollo', 'Santander'),
(14, 'Mantenimiento', 'Gijón'),
(15, 'Seguridad', 'Vigo'),
(16, 'Ingeniería', 'Córdoba'),
(17, 'Diseño', 'Granada'),
(18, 'Medios de Comunicación', 'Valladolid'),
(19, 'Transporte', 'Almería'),
(20, 'Estrategia', 'Oviedo');

INSERT INTO Empleados (id_empleado, nombre, apellido, salario, id_departamento) VALUES
(1, 'Ana', 'Pérez', 25000, 1),
(2, 'Juan', 'García', 30000, 2),
(3, 'María', 'López', 20000, 3),
(4, 'Pedro', 'Martínez', 22000, 1),
(5, 'Isabel', 'Fernández', 28000, 2),
(6, 'Miguel', 'Gómez', 21000, 3),
(7, 'Laura', 'Rodríguez', 24000, 1),
(8, 'David', 'Hernández', 29000, 2),
(9, 'Marta', 'Sánchez', 23000, 3),
(10, 'Javier', 'Pérez', 26000, 1),
(11, 'Elena', 'García', 27000, 2),
(12, 'Daniel', 'López', 25500, 3),
(13, 'Sandra', 'Martínez', 24500, 1),
(14, 'Francisco', 'Fernández', 23500, 2),
(15, 'Cristina', 'Gómez', 22500, 3),
(16, 'Alberto', 'Rodríguez', 21500, 1),
(17, 'Beatriz', 'Hernández', 20500, 2),
(18, 'Carlos', 'Sánchez', 19500, 3),
(19, 'Jorge', 'Pérez', 18500, 1),
(20, 'Clara', 'García', 17500, 2);

select * from Departamentos;

select * from Empleados;
select * from Empleados where nombre like "ANA";

select
	E.id_empleado,
    E.nombre,
    E.apellido,
    E.salario
from Empleados E
INNER JOIN Departamentos D on E.id_departamento = D.id_departamento;


SELECT
    E.id_empleado,
    E.nombre,
    E.salario,
    D.nombre_departamento
FROM
    Empleados E
INNER JOIN
    Departamentos D ON E.id_departamento = D.id_departamento
    where E.salario > 50000;

SELECT
    D.id_departamento,
    D.nombre_departamento,
    avg(E.salario) as Promedio_salario
FROM
    Empleados E
INNER JOIN
    Departamentos D ON E.id_departamento = D.id_departamento
    group by  D.id_nombre_departamento;
    
    SELECT
    D.ubicacion,
    AVG(E.salario) AS salario_promedio
FROM
    Empleados E
INNER JOIN
    Departamentos D ON E.id_departamento = D.id_departamento
GROUP BY
    D.ubicacion;

