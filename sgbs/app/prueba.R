library(tidyverse)
library(RPostgreSQL)
library(sf)
library(sp)
library(mapview)
library(leaflet)

drv <- PostgreSQL()
db_name <- 'sgbd'
host_name <- 'localhost'
port_id <- '5432'
user_name <- 'pruebas'
pass <- 'L@nc1S'

con <- dbConnect(drv,
                 dbname = db_name,
                 host = host_name,
                 port = port_id,
                 user = user_name,
                 password = pass)

dbListTables(con)


mex <- st_read(dsn = con, query = 'select * from development.mapa')
Encoding(mex$nom_mun) <-"UTF-8"
Encoding(mex$nom_ent) <-"UTF-8"

mex %>%
    select(cve_ent, geom) %>%
    plot

ggplot(mex) +
    geom_sf()

mapview(mex,labels=T)

library(tmap)

tm_shape(mex) +
    tm_polygons('cve_ent')

tmap_mode("view")

tm_shape(mex) +
    tm_polygons()

plot(mex, axes = TRUE)

class(mex)

mex_2 <- mex %>%
    select(cve_ent, cve_mun, nom_ent, nom_mun, geog) %>%
    mutate(centroide = st_coordinates(st_centroid(geog)))

class(mex_2)

color_mun <- colorFactor(palette = palette('Tableau 10'), domain = unique(mex_2$cve_ent))

leaflet(mex_2) %>%
    addProviderTiles("MapBox",
                     options = providerTileOptions(
                         id = "mapbox.light",
                         accessToken = Sys.getenv('MAPBOX_ACCESS_TOKEN'))) %>%
    addPolygons(fillColor = color_mun(mex_2$cve_ent),
                weight = 2,
                opacity = 1,
                color = "white",
                dashArray = "3",
                fillOpacity = 0.7,
                highlight = highlightOptions(weight = 5,
                                             color = "#666",
                                             dashArray = "",
                                             fillOpacity = 0.7,
                                             bringToFront = TRUE))

dbDisconnect(con)
