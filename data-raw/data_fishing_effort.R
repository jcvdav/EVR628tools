################################################################################
# title
################################################################################
#
# Juan Carlos Villaseñor-Derbez
# jc_villasenor@miami.edu
# August 6, 2025
#
# code to prepare `data_fishing_effort` dataset goes here
#
################################################################################

# Create an sf object that outlines the Gulf of Mexico region ------------------
# Define the bounding box for the Gulf of Mexico
gom_bbox <- c(
  xmin = -98,
  xmax = -80,
  ymin = 18,
  ymax = 31
)

# Create a polygon for the Gulf of Mexico
gom_polygon <- sf::st_polygon(list(matrix(
  c(
    gom_bbox["xmin"],
    gom_bbox["ymin"],
    # Southwest corner
    gom_bbox["xmax"],
    gom_bbox["ymin"],
    # Southeast corner
    gom_bbox["xmax"],
    gom_bbox["ymax"],
    # Northeast corner
    gom_bbox["xmin"],
    gom_bbox["ymax"],
    # Northwest corner
    gom_bbox["xmin"],
    gom_bbox["ymin"]  # Close the polygon
  ),
  ncol = 2,
  byrow = TRUE
)))

# Convert to sf object with proper CRS
gom_sf <- sf::st_sf(name = "Gulf of Mexico",
                    geometry = sf::st_sfc(gom_polygon),
                    crs = "EPSG:4326")


# Get data from GFW ------------------------------------------------------------
# Set up authentication for Global Fishing Watch API
api_key <- Sys.getenv("GFW_TOKEN")

# Use the get_raster function to fetch fishing effort data
effort_raster <- gfwr::get_raster(
  key = api_key,
  start_date = "2024-01-01",
  end_date = "2024-12-31",
  spatial_resolution = "LOW",
  temporal_resolution = "MONTHLY",
  region_source = "USER_SHAPEFILE",
  region = gom_sf
)

# Convert raster to data frame for easier manipulation
data_fishing_effort <- effort_raster |>
  janitor::clean_names() |>
  dplyr::mutate(
    date = lubridate::ymd(paste(time_range, "-01")),
    year = lubridate::year(date),
    month = lubridate::month(date)
  ) |>
  dplyr::select(
    year,
    month,
    lat,
    lon,
    effort_vessels = vessel_i_ds,
    effort_hours = apparent_fishing_hours)

# Export -----------------------------------------------------------------------
usethis::use_data(data_fishing_effort, overwrite = TRUE)
