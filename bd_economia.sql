-- Creacion del Schema economia
CREATE DATABASE economia;

-- Creacion del Tabla Pais
CREATE TABLE paises(
	nombre_pais varchar(100)
	,id_pais char(3) PRIMARY KEY
	,region varchar(100)
	,grupo_ingreso varchar(100));

-- Creacion del Tabla Indicadores
CREATE TABLE indicadores(
	id_indicador varchar(50) PRIMARY KEY
	,nombre_indicador varchar(200)
	,nota_fuente varchar(1500)
	,organizacion_fuente varchar(600));

CREATE TABLE Indicadores_desarrollo(
	 id_indicador_d int PRIMARY KEY AUTO_INCREMENT
	,id_pais char(3) 
	,id_indicador varchar(50)
	,year_1960 varchar(50)
	,year_1961 varchar(50)
	,year_1962 varchar(50)
	,year_1963 varchar(50)
	,year_1964 varchar(50)
	,year_1965 varchar(50)
	,year_1966 varchar(50)
	,year_1967 varchar(50)
	,year_1968 varchar(50)
	,year_1969 varchar(50)
	,year_1970 varchar(50)
	,year_1971 varchar(50)
	,year_1972 varchar(50)
	,year_1973 varchar(50)
	,year_1974 varchar(50)
	,year_1975 varchar(50)
	,year_1976 varchar(50)
	,year_1977 varchar(50)
	,year_1978 varchar(50)
	,year_1979 varchar(50)
	,year_1980 varchar(50)
	,year_1981 varchar(50)
	,year_1982 varchar(50)
	,year_1983 varchar(50)
	,year_1984 varchar(50)
	,year_1985 varchar(50)
	,year_1986 varchar(50)
	,year_1987 varchar(50)
	,year_1988 varchar(50)
	,year_1989 varchar(50)
	,year_1990 varchar(50)
	,year_1991 varchar(50)
	,year_1992 varchar(50)
	,year_1993 varchar(50)
	,year_1994 varchar(50)
	,year_1995 varchar(50)
	,year_1996 varchar(50)
	,year_1997 varchar(50)
	,year_1998 varchar(50)
	,year_1999 varchar(50)
	,year_2000 varchar(50)
	,year_2001 varchar(50)
	,year_2002 varchar(50)
	,year_2003 varchar(50)
	,year_2004 varchar(50)
	,year_2005 varchar(50)
	,year_2006 varchar(50)
	,year_2007 varchar(50)
	,year_2008 varchar(50)
	,year_2009 varchar(50)
	,year_2010 varchar(50)
	,year_2011 varchar(50)
	,year_2012 varchar(50)
	,year_2013 varchar(50)
	,year_2014 varchar(50)
	,year_2015 varchar(50)
	,year_2016 varchar(50)
	,year_2017 varchar(50)
	,year_2018 varchar(50)
	,year_2019 varchar(50)
	,year_2020 varchar(50)
	,year_2021 varchar(50)
	,year_2022 varchar(50)
	,year_2023 varchar(50)
	,year_2024 varchar(50)
    ,FOREIGN KEY (id_pais) REFERENCES paises(id_pais)
    ,FOREIGN KEY (id_indicador) REFERENCES indicadores(id_indicador));

	
				 
-- Carga de Datos de tabla paises
LOAD DATA INFILE 'D:/ProgramData/MySQL/MySQL Server 8.4/Uploads/Metadata_Country_API_3_DS2_es_csv_v2_70358.csv'
INTO TABLE paises
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 
IGNORE 1 LINES 
(nombre_pais,id_pais,region,grupo_ingreso);

-- Carga de Datos de tabla indicadores
LOAD DATA INFILE 'D:/ProgramData/MySQL/MySQL Server 8.4/Uploads/Metadata_Indicator_API_3_DS2_es_csv_v2_70358.csv'
INTO TABLE indicadores
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 
IGNORE 1 LINES 
(id_indicador,nombre_indicador,nota_fuente,organizacion_fuente);

-- Carga de Datos de tabla Indicadores_desarrollo
LOAD DATA INFILE 'D:/ProgramData/MySQL/MySQL Server 8.4/Uploads/API_3_DS2_es_csv_v2_70358.csv'
INTO TABLE Indicadores_desarrollo
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 
IGNORE 5 LINES 
(nombre_pais,id_pais,nombre_indicador,id_indicador,year_1960,year_1961,year_1962,year_1963,year_1964,year_1965
,year_1966,year_1967,year_1968,year_1969,year_1970,year_1971,year_1972,year_1973,year_1974,year_1975,year_1976,year_1977,year_1978
,year_1979,year_1980,year_1981,year_1982,year_1983,year_1984,year_1985,year_1986,year_1987,year_1988,year_1989,year_1990,year_1991
,year_1992,year_1993,year_1994,year_1995,year_1996,year_1997,year_1998,year_1999,year_2000,year_2001,year_2002,year_2003,year_2004
,year_2005,year_2006,year_2007,year_2008,year_2009,year_2010,year_2011,year_2012,year_2013,year_2014,year_2015,year_2016,year_2017,year_2018
,year_2019,year_2020,year_2021,year_2022,year_2023,year_2024);


-- Creacion de la tabla Ingresos para normalizar la tabla paises
CREATE TABLE ingresos(
	id_ingreso INT AUTO_INCREMENT PRIMARY KEY
	,grupo_ingreso varchar(40) );
	
-- Insertar los grupos de ingreso de la tabla Ingresos
INSERT INTO ingresos (grupo_ingreso) VALUES 
("Ingreso alto"),
("Ingreso bajo"),
("Ingreso mediano bajo"),
("Ingreso mediano alto"),
("Agregados"),
("No clasificados");


-- Se actualizan los campos de la clolumna grupo_ingreso de la tabla Paises
UPDATE paises
SET grupo_ingreso  = 1
WHERE grupo_ingreso ='Ingreso alto';

UPDATE paises
SET grupo_ingreso  = 2
WHERE grupo_ingreso ='Países de ingreso bajo';

UPDATE paises
SET grupo_ingreso  = 3
WHERE grupo_ingreso ='Países de ingreso mediano bajo';

UPDATE paises
SET grupo_ingreso  = 4
WHERE grupo_ingreso ='Ingreso mediano alto';

UPDATE paises
SET grupo_ingreso  = 5
WHERE grupo_ingreso ='Agregados';

UPDATE paises
SET grupo_ingreso  = 6
WHERE grupo_ingreso ='No clasificado';

-- Se actualizan el nombre de la comuna grupo_ingreso por id_ingreso de la tabla Paises

ALTER TABLE paises 
CHANGE COLUMN grupo_ingreso id_ingreso int;

-- Se modifica la tabla paises para agregar FOREIGN KEY con la tabla ingresos

ALTER TABLE paises
ADD CONSTRAINT fk_id_ingreso FOREIGN KEY (id_ingreso) REFERENCES ingresos(id_ingreso);



-- Creacion de la tabla Regiones para normalizar la tabla paises
CREATE TABLE regiones(
	id_region INT AUTO_INCREMENT PRIMARY KEY
	,nombre_region varchar(60) );
	
-- Insertar el nombre de la region de la tabla Regiones
INSERT INTO regiones (nombre_region) VALUES 
("Asia meridional"),
("África al sur del Sahara (excluido altos ingresos)"),
("Europa y Asia central (excluido altos ingresos)"),
("América Latina y el Caribe (excluido altos ingresos)"),
("Asia oriental y el Pacífico (excluido altos ingresos)"),
("Oriente Medio y Norte de África (excluido altos ingresos)");


-- Se actualizan los campos de la clolumna grupo_ingreso de la tabla Paises
UPDATE paises
SET region  = 1
WHERE region ='Asia meridional';

UPDATE paises
SET region  = 2
WHERE region ='África al sur del Sahara (excluido altos ingresos)';

UPDATE paises
SET region  = 3
WHERE region ='Europa y Asia central (excluido altos ingresos)';

UPDATE paises
SET region  = 4
WHERE region ='América Latina y el Caribe (excluido altos ingresos)';

UPDATE paises
SET region  = 5
WHERE region ='Asia oriental y el Pacífico (excluido altos ingresos)';

UPDATE paises
SET region  = 6
WHERE region ='Oriente Medio y Norte de África (excluido altos ingresos)';

UPDATE paises
SET region  = NULL 
WHERE region ='';

-- Se actualizan el nombre de la comuna region por id_region de la tabla Paises y el tipo de dato


ALTER TABLE paises 
CHANGE COLUMN id_region id_region int;

-- Se modifica la tabla paises para agregar FOREIGN KEY con la tabla Regiones

ALTER TABLE paises
ADD CONSTRAINT fk_id_region FOREIGN KEY (id_region) REFERENCES regiones(id_region);

