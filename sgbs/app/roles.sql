CREATE ROLE pruebas WITH LOGIN PASSWORD 'L@nc1S';
GRANT USAGE ON SCHEMA development TO pruebas;
GRANT SELECT ON ALL TABLES IN SCHEMA development TO pruebas;
GRANT pruebas TO shiny_app;



REVOKE pruebas FROM shiny_app;
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA development FROM pruebas;
REVOKE USAGE ON SCHEMA development FROM pruebas;
DROP ROLE pruebas;