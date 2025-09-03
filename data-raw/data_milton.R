################################################################################
#
# Juan Carlos Villaseñor-Derbez
# jc_villasenor@miami.edu
# date
#
# code to prepare `data_milton` dataset goes here
#
################################################################################
#
# Data come from https://www.ncei.noaa.gov/products/international-best-track-archive

# Get column names
col_names <- names(readr::read_csv("https://www.ncei.noaa.gov/data/international-best-track-archive-for-climate-stewardship-ibtracs/v04r01/access/csv/ibtracs.last3years.list.v04r01.csv", n_max = 0))

# Get storm of interest
data_milton <- readr::read_csv("https://www.ncei.noaa.gov/data/international-best-track-archive-for-climate-stewardship-ibtracs/v04r01/access/csv/ibtracs.last3years.list.v04r01.csv",
                               col_names = col_names,
                               skip = 2) |>
  dplyr::filter(NAME == "MILTON") |>
  dplyr::select(name = NAME, iso_time = ISO_TIME, lat = LAT, lon = LON,
         wind_speed = USA_WIND, pressure = USA_PRES, sshs = USA_SSHS) |>
  dplyr::mutate(sshs = as.character(sshs))

# Export
usethis::use_data(data_milton, overwrite = TRUE)
