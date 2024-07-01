### 📚 1. Introducción

En el contexto global de los países en desarrollo, la Base de Datos del Consumo Mundial se erige como una plataforma esencial que centraliza información detallada sobre los patrones de consumo en hogares. Esta iniciativa ha sido concebida con el propósito de servir como un recurso fundamental para diversos usuarios, abarcando desde investigadores en busca de datos precisos para sus estudios analíticos hasta empresas que desean profundizar su comprensión de los mercados en los cuales operan o planean expandirse.

La relevancia de esta base de datos radica en su capacidad para proporcionar acceso a información exhaustiva y actualizada, facilitando así análisis rigurosos y decisiones estratégicas fundamentadas. Este proyecto se enfoca en la creación de una infraestructura robusta que garantice la integridad, accesibilidad y utilidad de los datos recopilados, asegurando a su vez la confiabilidad y la precisión requeridas por los usuarios más exigentes en un entorno global dinámico y competitivo.

El diseño de la Base de Datos del Consumo Mundial se fundamenta en principios de usabilidad, flexibilidad y escalabilidad, con el objetivo de adaptarse a las necesidades cambiantes de una amplia gama de usuarios. A través de esta iniciativa, se espera no solo facilitar el acceso a información crucial, sino también promover un entendimiento más profundo de las dinámicas del consumo en los mercados emergentes, contribuyendo así al desarrollo económico y social sostenible a nivel global.

### 🎯 2. Objetivo general

El objetivo principal de este proyecto es establecer la Base de Datos del Consumo Mundial como una fuente centralizada de información sobre los patrones de consumo en los hogares de países en desarrollo. Esta iniciativa tiene como meta proporcionar a investigadores, empresas y otros usuarios interesados un acceso fácil y estructurado a datos precisos y actualizados, promoviendo así un análisis profundo y estratégico de los mercados emergentes. Además, se busca fomentar una comprensión más completa de las dinámicas de consumo, facilitando decisiones informadas que impulsen el crecimiento económico y social sostenible a nivel global.

### 📝 3. Objetivos específicos

- **Diseñar la estructura de la base de datos:** Definir y desarrollar la estructura de la base de datos que incluya al menos tres tablas fundamentales: una tabla para los países, otra para los indicadores específicos de consumo y una tercera para los indicadores de desarrollo mundial.

- **Modelado de datos detallado:** Establecer relaciones claras entre las tablas de países, indicadores de consumo y desarrollo mundial, asegurando que el modelo de datos sea eficiente y adaptable a futuras expansiones o modificaciones.

- **Definir atributos y tipos de datos:** Especificar los atributos y tipos de datos apropiados para cada tabla (por ejemplo, nombre del país, id del pais, indicadores de consumo como gasto promedio en alimentos por hogar, indicadores de desarrollo como el Índice de Desarrollo Humano).

- **Implementar mecanismos de integridad referencial:** Establecer restricciones de integridad referencial entre las tablas para mantener la consistencia de los datos, garantizando que no se puedan insertar registros huérfanos o incoherentes.



### 📉 4. Planteamiento del problema

 Es esencial que esta base de datos permita un acceso fácil y estructurado a información precisa, fomentando análisis estratégicos y decisiones fundamentadas. La solución requiere un modelo de datos robusto y escalable que soporte la inclusión de múltiples indicadores y mantenga relaciones claras entre ellos. Además, se debe implementar mecanismos de integridad referencial para asegurar la consistencia de los datos.

En resumen, la creación de esta base de datos busca llenar una importante brecha de información, proporcionando una herramienta esencial para entender los patrones de consumo en los hogares de los países en desarrollo y apoyar el crecimiento económico y social sostenible.

### 💡 5. Posible solución


Para abordar el problema de la falta de acceso a información detallada y actualizada sobre los patrones de consumo en los países en desarrollo, se propone la creación de una Base de Datos del Consumo Mundial utilizando MySQL. Esta solución se enfocará en garantizar la integridad, accesibilidad y utilidad de los datos recopilados, cumpliendo con los requisitos de los usuarios finales, como investigadores y empresas.

Pasos para la implementación:
Diseño de la estructura de la base de datos:

Tabla de países: Incluirá información básica como nombre del país, código, y otras características relevantes.
Tabla de indicadores de consumo: Contendrá datos sobre diversos aspectos del consumo en los hogares, como el gasto promedio en alimentos, educación, salud, etc.
Tabla de indicadores de desarrollo mundial: Incluirá indicadores como el Índice de Desarrollo Humano (IDH), PIB per cápita, entre otros.
Modelado de datos detallado:

Establecer relaciones claras entre las tablas utilizando claves primarias y foráneas para asegurar la integridad referencial. 

Normalizar la tabla paises

La solución propuesta se centra en el desarrollo y uso de una base de datos MySQL diseñada específicamente para gestionar una biblioteca digital. Esta base de datos facilitará consultas complejas y análisis de datos sin involucrar operaciones de actualización o modificación de datos, la solución incluirá:

- **Interfaz de búsqueda avanzada**: Implementación de consultas de selección en MySQL que permitan búsquedas por múltiples campos como paises, indicador y organizacion, utilizando operaciones de filtrado básico y ordenamientos para mejorar la eficiencia de la búsqueda.
- **Consultas de reporte**: Desarrollo de consultas que utilicen funciones de agregación para generar reportes 
- **Consultas de verificación de disponibilidad**: Creación de consultas que permitan verificar rápidamente los inidcadores de los paises

### 🔮 Consideraciones futuras

Para asegurar que la Base de Datos del Consumo Mundial sea una herramienta eficaz a largo plazo y pueda soportar análisis avanzados y predicciones, se deben tener en cuenta varias consideraciones futuras:

- Normalizar la tabla indicadores:

Creacion de la tabla organizaciones fuente, modificar los datos y columna de la tabla indicadores

- Incorporación de Big Data y análisis avanzado:

Integración con tecnologías Big Data: Evaluar la posibilidad de integrar la base de datos con tecnologías Big Data, como Hadoop o Spark, para manejar grandes volúmenes de datos y realizar análisis complejos.
Análisis de series temporales: Desarrollar capacidades para analizar tendencias a lo largo del tiempo, identificando patrones y anomalías en los datos de consumo.
Implementación de Machine Learning y AI:

- Modelos predictivos: Utilizar técnicas de Machine Learning para desarrollar modelos predictivos que puedan anticipar cambios en los patrones de consumo y ofrecer recomendaciones.
Análisis de comportamiento: Implementar algoritmos de AI para analizar el comportamiento del consumidor y segmentar mercados de manera más precisa.
Ampliación de la base de datos:

- Nuevos indicadores: Incorporar nuevos indicadores de consumo y desarrollo que puedan surgir en el futuro, asegurando que la base de datos se mantenga relevante y útil.
Más países y regiones: Ampliar la base de datos para incluir más países y regiones, proporcionando una visión más global y detallada.
- Visualización de datos:

Dashboards interactivos: Desarrollar dashboards interactivos que permitan a los usuarios visualizar datos de manera intuitiva y realizar análisis en tiempo real.
Herramientas de visualización: Integrar la base de datos con herramientas de visualización de datos como Tableau oPower BI para facilitar la interpretación y presentación de los resultados.
- Optimización y rendimiento:

Optimización de consultas: Implementar técnicas de optimización de consultas SQL para mejorar el rendimiento y la velocidad de acceso a los datos.
Indexación y particionamiento: Utilizar índices y particionamiento de tablas para gestionar grandes volúmenes de datos y mejorar la eficiencia de las consultas.

#### 📊 Esquema de la base de datos

1. **Tabla `ingresos`**

   - `id_ingreso` (INT, PRIMARY KEY, AUTO_INCREMENT): Identificador del grupo de ingreso
   - `grupo_ingreso` (VARCHAR): Nombre del grupo de ingreso.

2. **Tabla `regiones`**

   - `id_regiones` (INT, PRIMARY KEY, AUTO_INCREMENT): Identificador de la region
   - `nombre_region` (VARCHAR): Nombre de la region.

3. **Tabla `paises`**

   - `id_pais` (CHAR, PRIMARY KEY): Identificador único de cada pais.
   - `nombre_pais` (VARCHAR): Nombre del pais.
   - `id_region` (INT, FOREIGN KEY REFERENCES Regiones(id_region)): Region del pais.
   - `id_ingreso` (INT, FOREIGN KEY REFERENCES Ingresos(id_ingreso)): Ingreso del pais.

4. **Tabla `indicadores`**

   - `id_indicador` (VARCHAR, PRIMARY KEY): Identificador único del indicador.
   - `nombre_indicador` (VARCHAR): Nombre del indicador.
   - `nota_fuente` (VARCHAR): Nota de la fuente del indicador.
   - `organizacion_fuente` (VARCHAR): Organizacion de la fuente de las de los datos.

5. **Tabla `Indicadores_desarrollo`**
   - `id_indicador_d` (INT, PRIMARY KEY, AUTO_INCREMENT): Identificador del indicador de desarrollo
   - `id_paises` (INT, FOREIGN KEY REFERENCES Paises(id_pais)): pais del indicador.
    - `id_indicador` (INT, FOREIGN KEY REFERENCES Indicadores(id_indicador)): indicador del desarrollo.
   - `year_1960` (VARCHAR): Ingresos en el año 1968.....

### 📘 Conclusiones

En conclusión, la Base de Datos del Consumo Mundial no solo cubrirá una necesidad crítica de información en los países en desarrollo, sino que también se diseñará con vistas al futuro, permitiendo la inclusión de nuevas tecnologías y métodos de análisis que potenciarán su utilidad y relevancia a largo plazo. Esta iniciativa promoverá una comprensión más profunda de las dinámicas de consumo, facilitando decisiones estratégicas que impulsarán el desarrollo económico y social sostenible a nivel global.

### 📂 Entregables

- **Script de la creacion de la base de datos**: Se adjuntará un script SQL con los pasos a segiuir para la creacion de las tablas, insercion de los datos y los update para la normalizacion [bd_economia.sql](bd_economia.sql).

- **Script de la base de datos**: Se adjuntará un script SQL con la estructura de la base de datos y ejemplos de consultas, incluyendo selección, filtrado y ordenamientos, [Querys.md](Querys.md).

- **Documentación del proyecto**: Se entregará un documento en formato Markdown que incluya la descripción del proyecto, los objetivos, la solución propuesta y el esquema de la base de datos.

- **Presentación en PowerPoint**: Se preparará una presentación en PowerPoint que resuma los aspectos más relevantes del proyecto y su importancia en el contexto actual de las bibliotecas digitales.

<!-- dumps de paises, indicadores, indicadores de desarrollo -->
- **Dumps de la base de datos**: Se adjuntarán archivos de volcado de la base de datos con datos de paises e indicadores.

<!-- Diagrama Entidad Relacion -->
- **Diagrama Entidad-Relación (ER)**: Se incluirá un diagrama ER que muestre las relaciones entre las tablas de la base de datos y sus atributos. [economia_ER.png](economia_ER.png).