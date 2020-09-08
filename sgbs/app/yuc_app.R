library(shiny)
library(RPostgreSQL)
library(sf)
library(sp)
library(tidyverse)
library(dbplyr)
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

natu <- tbl(con,in_schema('sub_natural','usv_municipios_clasifica_2')) %>%
    as.data.frame %>%
    tibble
Encoding(natu$entidad) <- 'UTF-8'
Encoding(natu$municipio) <- 'UTF-8'
Encoding(natu$region) <- 'UTF-8'
Encoding(natu$cobertura_c2) <- 'UTF-8'
Encoding(natu$cobertura_c3) <- 'UTF-8'
Encoding(natu$cobertura_c4) <- 'UTF-8'

mex_yuc <- st_read(dsn = con, query = 'select * from development.mex_mun') %>%
    rename(cve_geo = cvegeo) %>%
    select(cve_geo, cve_ent, cve_mun, nom_ent, nom_mun, geom) %>%
    filter(cve_ent == '31') %>%
    mutate(area = st_area(geom)/100^2)
Encoding(mex_yuc$nom_mun) <- 'UTF-8'
Encoding(mex_yuc$nom_ent) <-'UTF-8'

natu_yuc <- inner_join(x = natu,
                       y = mex_yuc,
                       by = 'cve_geo') %>%
    mutate(proporcion = hectareas/area) %>%
    select(cve_geo,
           entidad,
           municipio,
           region,
           serie,
           proporcion,
           hectareas,
           cobertura_c4)

dbDisconnect(con)

serie_min = min(natu$serie)
serie_max = max(natu$serie)
#cobertura = distinct(natu,cobertura_c4)

color <- colorFactor(palette = palette('Tableau 10'), domain = seq(0,1,0.1))
color_mun <- colorFactor(palette = palette('Tableau 10'), domain = unique(mex_yuc$cve_mun))

ui <- fluidPage(
    
    titlePanel('Prueba'),
    
    sidebarLayout(
        sidebarPanel(
            sliderInput('serie',
                        'Serie:',
                        min = serie_min,
                        max = serie_max,
                        value = serie_min,
                        sep = '',
                        step = 1,
                        animate = TRUE),
            
#            selectInput('cobertura',
#                        'Cobertura:',
#                        choices = cobertura)
            ),
        
        mainPanel(tableOutput('valores'))),
    
    leafletOutput("map")
    
)

server <- function(input, output, session){
    
    sliderValues <- reactive({
        natu_yuc %>%
            filter()
    })
    
    output$map <- renderLeaflet({
        leaflet(mex_yuc) %>%
            addProviderTiles("MapBox",
                             options = providerTileOptions(
                                 id = "mapbox.light",
                                 accessToken = Sys.getenv('MAPBOX_ACCESS_TOKEN'))) %>%
            addPolygons(fillColor = color(),
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
    })
}

shinyApp(ui = ui, server = server)