
#### 1.1. Estructura de una base de datos
```sql
-- Mostrar la estructura de la tabla paises

DESCRIBE paises;

-- Mostrar la estructura de la tabla indicadores
DESCRIBE indicadores;

-- Mostrar la estructura de la tabla indicadores_desarrollo
DESCRIBE indicadores_desarrollo;

-- Mostrar la estructura de la tabla indicadores_desarrollo
DESCRIBE ingresos;

-- Mostrar la estructura de la tabla indicadores_desarrollo
DESCRIBE regiones;

```

#### 1.2. Selección de campos
```sql
-- Seleccionar todos los campos de la tabla paises
SELECT * 
FROM paises;

-- Seleccionar todos los campos de la tabla regiones
SELECT * 
FROM regiones;

-- Seleccionar solo el nombre de indicador y nota fuente de la tabla indicadores
SELECT nombre_indicador, nota_fuente 
FROM indicadores;

-- Seleccionar id_pais, id_indicador, year_2018 year_2022, year_2023 de la tabla Usuarios
SELECT id_pais, id_indicador,year_2018, year_2022,year_2023 
FROM indicadores_desarrollo;

-- Seleccionar todos los grupos de ingreso 
SELECT grupo_ingreso
FROM ingresos;

-- Seleccionar todas las fuentes de organizacion de donde se obtubieron los datos sin duplicados
SELECT DISTINCT organizacion_fuente
FROM indicadores 
```

#### 1.3. Filtrado básico
```sql
-- Seleccionar paises que esten dentro del grupo de ingresos 'Ingreso alto'
SELECT nombre_pais, id_ingreso AS 'Ingreso Alto'
FROM paises 
WHERE id_ingreso = 1;

-- Seleccionar paises que esten dentro del grupo de ingresos 'Paises de ingreso bajo'
SELECT nombre_pais, id_ingreso AS 'Ingreso Bajo'
FROM paises 
WHERE id_ingreso = 2;


-- Seleccionar paises que esten dentro del de la region 'América Latina y el Caribe (excluido altos ingresos)'
SELECT nombre_pais AS 'América Latina y el Caribe (excluido altos ingresos)'
FROM paises 
WHERE id_region = 4;

-- Seleccionar el nombre de indicador la fuente de organizacion sea 'Banco Mundia'
SELECT nombre_indicador, nota_fuente,organizacion_fuente
FROM indicadores 
WHERE organizacion_fuente ='Banco Mundial';


```

#### 1.4. Ordenamientos
```sql
-- Ordenar paises por nombre_pais en orden descendiente
SELECT * 
FROM paises 
ORDER BY nombre_pais DESC;

-- Ordenar ingresos por grupo_ingresos en orden ascendente
SELECT * 
FROM ingresos 
ORDER BY grupo_ingreso ASC;

-- Ordenar regiones por nombre_region en orden ascendente
SELECT * 
FROM regiones 
ORDER BY nombre_region ASC;

-- Ordenar los indicadores por organizacion fuente de manera Decendente
SELECT * 
FROM indicadores 
ORDER BY nombre_indicador DESC;

-- Ordenar los indicadores de desarrollo por mayor pib en 2022 ascendente
SELECT year_2021
FROM indicadores_desarrollo 
ORDER BY year_2021 DESC;
```

### Agrupamientos:
#### 2.1. Funciones de agregación
```sql
-- Contar el número total de paises
SELECT COUNT(*) AS total_paises
FROM paises;

-- Contar el numero total de indicadores
SELECT COUNT(*) AS total_indicadores
FROM indicadores;

-- Contar el promedio de desarrollo del año 2017,2021,2022
SELECT AVG(year_2017) AS promedio_year_2017
	   ,AVG(year_2021) AS promedio_year_2021
	   ,AVG(year_2022) AS promedio_year_2022
FROM indicadores_desarrollo;

-- Contar el numero total de regiones
SELECT COUNT(*) AS total_regiones
FROM regiones;
```

#### 2.2. Agrupamientos
```sql
-- Contar el número de indicadores por grupo organizacion fuente
SELECT organizacion_fuente, COUNT(*) AS total_indicadores
FROM indicadores 
GROUP BY organizacion_fuente;

-- Contar el número de paises por grupo de ingreso
SELECT id_ingreso, COUNT(*) AS total_paises
FROM paises 
GROUP BY id_ingreso;

-- Contar el número de paises por regiones
SELECT id_region, COUNT(*) AS total_paises
FROM paises 
GROUP BY id_region;


#### 2.3. La cláusula having
```sql
-- Contar el número de paises por grupo de ingreso mostrando solo el total de Países de ingreso mediano bajo Y Ingreso mediano alto
SELECT id_ingreso, COUNT(*) AS total_paises
FROM paises 
GROUP BY id_ingreso
HAVING id_ingreso IN (4,3);

-- Contar el número de indicadores por organizacion fuente mostrando todos los indicadores donde la organizacion fuente inice con 'Banco Mundial'
SELECT organizacion_fuente, COUNT(*) AS total_indicadores
FROM indicadores 
GROUP BY organizacion_fuente
HAVING organizacion_fuente like 'Banco Mundial%';
```

### Subconsultas:
#### 3.1. Subconsultas select
```sql
-- Seleccionar títulos de libros junto con el total de préstamos de cada libro utilizando una subconsulta en el SELECT
SELECT nombre_pais,
       (SELECT COUNT(*) 
        FROM indicadores_desarrollo ID
        WHERE ID.id_pais = paises.id_pais) AS total_paises
FROM paises 
WHERE nombre_pais = 'Mexico';


-- Contar el número de paises por grupo de ingreso mostrando solo el total de Países de ingreso alto Y Ingreso mediano alto
SELECT (SELECT grupo_ingreso
		FROM ingresos
		WHERE id_ingreso IN (p.id_ingreso)) AS grupo_Ingreso, COUNT(*) AS total_paises
FROM paises p
GROUP BY grupo_ingreso
HAVING grupo_ingreso IN ('Ingreso mediano alto','Ingreso alto');

-- Seleccionar los paises que pertenescan a la region 'América Latina y el Caribe (excluido altos ingresos)'
SELECT nombre_pais, (SELECT r.nombre_region
		FROM regiones r
		WHERE r.id_region IN (p.id_region)) AS region
FROM paises p
GROUP BY nombre_pais,region
HAVING region IN ('América Latina y el Caribe (excluido altos ingresos)');


#### 3.2. Subconsultas from
```sql
-- Seleccionar el total de paises por grupo_ingreso, usando una subconsulta en FROM
SELECT id_ingreso, total_paises
FROM (SELECT id_ingreso, COUNT(*) AS total_paises
      FROM paises 
      GROUP BY id_ingreso )AS subconsulta;
```

#### 3.3. Subconsultas where
```sql
-- Seleccionar los paises que tuvieron un ingreso mayor al promedio del 2018
SELECT * 
FROM paises p 
WHERE p.id_pais in (SELECT id.id_pais
                         FROM indicadores_desarrollo id
                         WHERE id.year_2018 > (SELECT avg(year_2018)
                        						FROM indicadores_desarrollo));
```

### Cruces:
#### 4.1. Inner Join
```sql

-- seleccionar todos los paises que tengan una relacion con una region
SELECT p.nombre_pais, r.nombre_region
	  FROM paises p
	  INNER JOIN regiones r
	  ON p.id_region =  r.id_region

-- Seleccionar todos los indicadores de desarrollo con detalles de nombre_pais, grupo_ingreso, nombre_indicado, el año 2018,2021,2022
SELECT p.nombre_pais,p.id_ingreso, i.nombre_indicador, id.year_2018, id.year_2021, id.year_2022
FROM paises p
INNER JOIN indicadores_desarrollo id 
    ON p.id_pais = id.id_pais
INNER JOIN indicadores i 
    ON i.id_indicador = id.id_indicador
   ORDER BY p.nombre_pais;
```

#### 4.2. Left y right join
```sql
-- seleccionar todos los paises y la region a la que pertenecen
SELECT p.nombre_pais, r.nombre_region
	  FROM paises p
	  left JOIN regiones r
	  ON p.id_region =  r.id_region

-- seleccionar todas las regiones y los paises que tienen relacion
SELECT p.nombre_pais, r.nombre_region
	  FROM paises p
	  right JOIN regiones r
	  ON p.id_region =  r.id_region

-- Seleccionar todos los indicadores de desarrollo con detalles de nombre_pais, grupo_ingreso, nombre_indicado, el año 2018,2021,2022, si existen (Left Join)
SELECT p.nombre_pais,p.id_ingreso, i.nombre_indicador, id.year_2018, id.year_2021, id.year_2022
FROM paises p
left JOIN indicadores_desarrollo id 
    ON p.id_pais = id.id_pais
left JOIN indicadores i 
    ON i.id_indicador = id.id_indicador
   ORDER BY p.nombre_pais ;

SELECT p.nombre_pais,p.id_ingreso, i.nombre_indicador, id.year_2018, id.year_2021, id.year_2022
FROM paises p
Right JOIN indicadores_desarrollo id 
    ON p.id_pais = id.id_pais
RIGHT JOIN indicadores i 
    ON i.id_indicador = id.id_indicador
   ORDER BY p.nombre_pais ;
```