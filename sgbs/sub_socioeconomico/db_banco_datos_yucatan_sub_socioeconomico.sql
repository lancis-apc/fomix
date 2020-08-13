--Esta sección es para el componente socioeconómico

/*
    ***********************************************************************
    En esta subsección se crean los catalogos del componente socioeconómico
    ***********************************************************************
*/

--Se crea catalogo para registros de grados del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS development.ct_idp_grados(
    gidp_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(40) NOT NULL
);

--Se crea catalogo para registros de categoria del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS development.ct_idp_categorias(
    cidp_id SERIAL PRIMARY KEY,
    categoria VARCHAR(10) NOT NULL
);

--Se crea catalogo para registros categoria del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS development.ct_idp(
    idp_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(30) NOT NULL
);

--Se crea catalogo para registros rtp del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS development.ct_idp_rtp(
    rtp_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

--Se crea catalogo para registros pob del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS development.ct_pob_ind(
    pi_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(90) NOT NULL
);

--Se crea catalogo para registros pob del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS development.ct_viv_ind(
    vi_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(200) NOT NULL
);

--Se crea catalogo para registros pob del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS development.ct_prop_pob_ind_tip(
    ppit_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

--Se crea catalogo para registros pob del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS development.ct_prop_pob_ind_sub(
    ppis_id CHAR(1) PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL,
    ppit_id SMALLINT REFERENCES development.ct_prop_pob_ind_tip(ppit_id)
);

--Se crea catalogo para registros pob del archivo dd_indigena.csv
CREATE TABLE IF NOT EXISTS development.ct_prop_pob(
    pp_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(60) NOT NULL
);

--Se crea catalogo para registros pob del archivo bd_pob_afrodesc.csv
CREATE TABLE IF NOT EXISTS development.ct_pob_afrodesc(
    pa_id SERIAL PRIMARY KEY,
    descripcion VARCHAR(70) NOT NULL
);

--Se crea catalogo para el archivo bd_pob_gpo_edad_quinq.csv
CREATE TABLE IF NOT EXISTS development.ct_gpo_edad_quinq(
    geq_id SERIAL PRIMARY KEY,
    gpo_quin VARCHAR(15) NOT NULL
);

--Se crea catalogo para el archivo bd_pob_gpo_edad_quinq.csv para separar según población
CREATE TABLE IF NOT EXISTS development.ct_pob_geq(
    pgeq_id SMALLINT PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

/*
    **************************************************************************************
    En esta subsección se crean las tablas de la información del componente socioeconómico
    **************************************************************************************
*/

--Se crea tabla para registros de grados del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS development.idp_grados(
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT NOT NULL,
    grado NUMERIC(5,4) NOT NULL,
    gidp_id SMALLINT NOT NULL REFERENCES development.ct_idp_grados(gidp_id)
);

--Se crea tabla para registros de dispersión del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS development.idp(
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT NOT NULL,
    indice NUMERIC(5,4) NOT NULL,
    cidp_id SMALLINT NOT NULL REFERENCES development.ct_idp_categorias(cidp_id),
    idp_id SMALLINT NOT NULL REFERENCES development.ct_idp(idp_id)
);

--Se crea tabla para registros de dispersión del archivo bd_idp.csv
CREATE TABLE IF NOT EXISTS development.idp_rtp(
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT NOT NULL,
    rtp NUMERIC(5,4) NOT NULL,
    rtp_id SMALLINT NOT NULL REFERENCES development.ct_idp_rtp(rtp_id)
);

--Se crea tabla para registros de población usando archivos: bd_idp.csv
CREATE TABLE IF NOT EXISTS development.habitantes(
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT NOT NULL,
    habitantes INTEGER NOT NULL
);

--Se crea tabla para registros pob del archivo bd_indigena.csv
CREATE TABLE IF NOT EXISTS development.pob_ind(
    cve_geo CHAR(5) NOT NULL,
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT,
    habitantes INTEGER,
    pi_id SMALLINT NOT NULL REFERENCES development.ct_pob_ind(pi_id)
);

--Se crea tabla para registros pob del archivo bd_indigena.csv
CREATE TABLE IF NOT EXISTS development.viv_ind(
    cve_geo CHAR(5) NOT NULL,
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT,
    viviendas INTEGER,
    vi_id SMALLINT NOT NULL REFERENCES development.ct_viv_ind(vi_id)
);

--Se crea tabla para registros pob del archivo bd_indigena.csv
CREATE TABLE IF NOT EXISTS development.prop_pob_ind(
    cve_geo CHAR(5) NOT NULL,
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT,
    porcentaje NUMERIC(6,3),
    ppis_id CHAR(1) NOT NULL REFERENCES development.ct_prop_pob_ind_sub(ppis_id),
    pp_id SMALLINT NOT NULL REFERENCES development.ct_prop_pob(pp_id)
);

--Se crea tabla para registros del archivo bd_pob_gpo_edad_quinq.csv
CREATE TABLE IF NOT EXISTS development.pob_gpo_edad_quinq(
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT NOT NULL,
    geq_id SMALLINT NOT NULL REFERENCES development.ct_gpo_edad_quinq(geq_id),
    cantidad INTEGER NOT NULL,
    pgeq_id SMALLINT NOT NULL REFERENCES development.ct_pob_geq(pgeq_id)
);

--Se crea tabla para registros del archivo bd_pob_afrodesc.csv
CREATE TABLE IF NOT EXISTS development.pob_afrodesc(
    cve_mun CHAR(3) NOT NULL REFERENCES development.municipios(clave_municipio),
    serie SMALLINT NOT NULL,
    porcentaje NUMERIC(5,2) NOT NULL,
    pa_id SMALLINT NOT NULL REFERENCES development.ct_pob_afrodesc(pa_id)
);

/*
    *************************************************************
    Esta sección es para las vistas del componente socioeconómico
    *************************************************************
*/

-- Se crea vista para los grados del archivo bd_idp.csv
CREATE VIEW development.view_idp_grados AS
SELECT
    a.cve_mun,
    b.municipio,
    c.region,
    a.serie,
    a.grado,
    d.descripcion
FROM development.idp_grados AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS c USING(id_region)
JOIN development.ct_idp_grados AS d USING(gidp_id);

-- Se crea vista para las categorias del archivo bd_idp.csv
CREATE VIEW development.view_idp AS
SELECT
    a.cve_mun,
    b.municipio,
    c.region,
    a.serie,
    a.indice,
    d.categoria,
    e.descripcion
FROM development.idp AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS c USING(id_region)
JOIN development.ct_idp_categorias AS d USING(cidp_id)
JOIN development.ct_idp AS e USING(idp_id);

-- Se crea vista para rtp del archivo bd_idp.csv
CREATE VIEW development.view_idp_rtp AS
SELECT
    a.cve_mun,
    b.municipio,
    c.region,
    a.serie,
    a.rtp,
    d.descripcion
FROM development.idp_rtp AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS c USING(id_region)
JOIN development.ct_idp_rtp AS d USING(rtp_id);

-- Se crea vista para la población; con información de bd_idp.csv y quinquenios
CREATE VIEW development.view_habitantes AS
WITH hab AS (
    SELECT * FROM development.habitantes
    UNION SELECT cve_mun, serie, SUM(cantidad) AS habitantes
    FROM development.pob_gpo_edad_quinq GROUP BY cve_mun, serie
)
SELECT
    a.cve_mun,
    b.municipio,
    a.serie,
    c.region,
    a.habitantes
FROM hab AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS c USING(id_region)
ORDER BY a.serie, a.cve_mun;

-- Se crea vista para rtp del archivo bd_indigena.csv
CREATE VIEW development.view_pob_ind AS
SELECT
    a.cve_mun,
    b.municipio,
    c.region,
    a.serie,
    a.habitantes,
    d.descripcion
FROM development.pob_ind AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS c USING(id_region)
JOIN development.ct_pob_ind AS d USING(pi_id);

-- Se crea vista para rtp del archivo bd_indigena.csv
CREATE VIEW development.view_viv_ind AS
SELECT
    a.cve_mun,
    b.municipio,
    c.region,
    a.serie,
    a.viviendas,
    d.descripcion
FROM development.viv_ind AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS c USING(id_region)
JOIN development.ct_viv_ind AS d USING(vi_id);

-- Se crea vista para rtp del archivo bd_indigena.csv
CREATE VIEW development.view_prop_pob_ind AS
SELECT
    a.cve_mun,
    b.municipio,
    c.region,
    a.serie,
    d.habitantes,
    a.porcentaje,
    e.descripcion,
    f.descripcion AS sub_tipo_municipio,
    g.descripcion AS tipo_municipio
FROM development.prop_pob_ind AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
JOIN development.regiones AS c USING(id_region)
JOIN (
    SELECT cve_mun, serie, habitantes
    FROM development.pob_ind
    WHERE pi_id=1) AS d USING(cve_mun, serie)
JOIN development.ct_prop_pob AS e USING(pp_id)
JOIN development.ct_prop_pob_ind_sub AS f USING(ppis_id)
JOIN development.ct_prop_pob_ind_tip AS g USING(ppit_id);

-- Se crea vista para el archivo bd_pob_afrodesc.csv
CREATE VIEW development.view_pob_afrodesc AS
SELECT
    a.cve_mun,
    b.municipio,
    c.region,
    a.serie,
    a.porcentaje,
    d.descripcion
FROM development.pob_afrodesc AS a
JOIN development.municipios AS b ON a.cve_mun = b.clave_municipio
LEFT JOIN development.regiones AS c USING(id_region)
JOIN development.ct_pob_afrodesc AS d USING(pa_id);

-- Se crea vista para el archivo bd_pob_gpo_edad_quinq.csv
CREATE VIEW development.view_pob_gpo_edad_quinq AS
WITH pgeq AS (
    WITH tab_tot AS (
        WITH totales AS (
            SELECT cve_mun, serie, SUM(cantidad) AS cantidad
            FROM development.pob_gpo_edad_quinq
            GROUP BY cve_mun, serie)
        SELECT
            a.cve_mun,
            a.serie,
            18 AS geq_id,
            a.cantidad,
            ROUND((CAST(a.cantidad AS NUMERIC)/b.cantidad)*100,2) AS porcentaje,
            a.pgeq_id
        FROM (
            SELECT cve_mun, serie, pgeq_id, SUM(cantidad) AS cantidad
            FROM development.pob_gpo_edad_quinq
            GROUP BY cve_mun, serie, pgeq_id) AS a
        JOIN totales AS b USING(cve_mun, serie)
        UNION SELECT cve_mun, serie, 18 AS geq_id, cantidad, 100.00 AS porcentaje, 3 AS pgeq_id
        FROM totales)
    SELECT
        b.cve_mun,
        b.serie,
        b.geq_id,
        b.cantidad,
        ROUND((CAST(b.cantidad AS NUMERIC)/c.cantidad)*100,2) AS porcentaje,
        b.pgeq_id
    FROM (
        SELECT * FROM development.pob_gpo_edad_quinq
        UNION SELECT cve_mun, serie, geq_id, SUM(cantidad) AS cantidad, 3 AS pgeq_id
        FROM development.pob_gpo_edad_quinq
        GROUP BY cve_mun, serie, geq_id) AS b
    JOIN tab_tot AS c USING(cve_mun, serie, pgeq_id)
    UNION SELECT * FROM tab_tot)
SELECT
    d.cve_mun,
    e.municipio,
    f.region,
    d.serie,
    d.cantidad,
    d.porcentaje,
    g.gpo_quin,
    h.descripcion
FROM pgeq AS d
JOIN development.municipios AS e ON d.cve_mun = e.clave_municipio
JOIN development.regiones AS f USING(id_region)
JOIN (
    SELECT * FROM development.ct_gpo_edad_quinq
    UNION SELECT 18 AS geq_id, 'Total' AS gpo_quin) AS g USING(geq_id)
JOIN (
    SELECT * FROM development.ct_pob_geq
    UNION SELECT 3 AS pgeq_id, 'Población por grupo de edad quinquenal.' AS descripcion) AS h USING(pgeq_id);









----------------------------------------------------------------------------
--En esta subsección se crean los catalogos


--Se crea una tabla para el grupo de municipios al que pertenece el municipio según su tamaño de población
CREATE TABLE IF NOT EXISTS development.ct_pob(
    cve_pob SMALLINT PRIMARY KEY,
    grupo VARCHAR(30)
);


--Sección en aún prueba
-----------------------------------------------------------------------------------------------------------------
--Se crea una tabla para las categorias de pobreza
CREATE TABLE IF NOT EXISTS development.ctg_pobreza(
    id SERIAL PRIMARY KEY,
    r_pobr VARCHAR(9) NOT NULL,
    c_pobr VARCHAR(8) NOT NULL
);

--Se crea una tabla para las categorias de pobreza extrema
CREATE TABLE IF NOT EXISTS development.ctg_pobreza_extrema(
    id SERIAL PRIMARY KEY,
    r_pobr_e VARCHAR(9) NOT NULL,
    c_pobr_e VARCHAR(9) NOT NULL
);

--Se crea una tabla de pobreza
CREATE TABLE IF NOT EXISTS development.diag_pobreza_ageb(
    cve_mun CHAR(3) REFERENCES development.municipios(clave_municipio),
    fol_ageb VARCHAR(14) REFERENCES development.agebs(fol_ageb),
    ctg_p_id SMALLINT REFERENCES development.ctg_pobreza(id)
);

--Se crea una tabla de pobreza extrema
CREATE TABLE IF NOT EXISTS development.diag_pobreza_extrema_ageb(
    cve_mun CHAR(3) REFERENCES development.municipios(clave_municipio),
    fol_ageb VARCHAR(14) REFERENCES development.agebs(fol_ageb),
    ctg_pe_id SMALLINT REFERENCES development.ctg_pobreza_extrema(id)
);
