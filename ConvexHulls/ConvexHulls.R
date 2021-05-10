# Convex Hulls
## Creating a convex hull around points with and without buffers
## 2021-05-10
## ML Gaynor

# Load packages
library(tidyverse)
library(ggplot2)
library(raster)
library(rgeos)
library(rgdal)
library(sp)

# Read in points
df <- read.csv("data/Shortia_galacifolia_062620-cleaned.csv")

# Make spatial points
pts <- SpatialPoints(df[,9:8])

# Make simple convex hull
hull <- gConvexHull(pts)

# Simple plot to inspect
plot(pts)
lines(hull, col = "black")

# Buffers
## By degree
bufferbydegree <- gBuffer(hull, width = 0.2)

## By area
convert_to_degrees <- function(area_m){
  area_degree <- area_m/111
  return(area_degree)
}

buffermake <- function(hull){
  area <- gArea(hull)
  bwidth <- area*0.10
  bwidthb <- convert_to_degrees(bwidth)
  buffer <- gBuffer(hull, width = bwidthb)
  return(buffer)
}

bufferbyarea <- buffermake(hull)

# Simple plot to inspect
plot(pts)
lines(hull, col = "black")
lines(bufferbydegree, col = "blue")
lines(bufferbyarea, col = "red")

# Inspect area
summary(gArea(hull))
summary(gArea(bufferbyarea))
summary(gArea(bufferbydegree))


# Fancy plot
## USA basemap
USA <- borders(database = "usa", colour = "gray50", fill = "gray50")

## ggplot 
fancy_plot <- ggplot() +
              USA +
              geom_polygon(hull, mapping = aes(x = long, y = lat), col = "blue") +
              coord_map(xlim = c(-90, -60),ylim = c(30, 50))
fancy_plot      
