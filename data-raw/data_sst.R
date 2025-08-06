################################################################################
#
# Juan Carlos Villaseñor-Derbez
# juancvd@stanford.edu
# date
#
# code to prepare `data_sst` dataset goes here
#
# Download NOAA AVHRR Optimum Interpolation v2.1 - SST
# NOAA/National Centers for Environmental Information (NCEI) 1/4 Degree Daily
# Optimum Interpolation Sea Surface Temperature (OISST) Analysis,
# Version 2.1 - Inter. NOAAs 1/4-degree Daily Optimum Interpolation Sea Surface
# Temperature (OISST) (sometimes referred to as Reynolds SST, which however also
# refers to earlier products at different resolution), currently available as
# version v02r01, is created by interpolating and extrapolating SST observations
# from different sources, resulting in a smoothed complete field.
# Data can be manually queried here:
# https://coastwatch.pfeg.noaa.gov/erddap/griddap/ncdcOisst21Agg_LonPM180.html
# Note that data are missing for 2021-03-23 and 2021-09-07
################################################################################

## SET UP ######################################################################

# Define a function to download data -------------------------------------------
OISST_sub_dl <- function(time_df) {
  OISST_dat <- rerddap::griddap(
    datasetx = "ncdcOisst21Agg_LonPM180",
    url = "https://coastwatch.pfeg.noaa.gov/erddap/",
    time = c(time_df$start, time_df$end),
    zlev = c(0, 0),
    latitude = c(25.25, 25.75),
    longitude = c(-81,-79.75),
    fields = "sst"
  )$data |>
    dplyr::mutate(time = as.Date(stringr::str_remove(time, "T00:00:00Z")))

  return(OISST_dat)
}

# Load data --------------------------------------------------------------------
dl_years <- dplyr::tibble(
  start = c("2000-01-01",
            "2008-01-01",
            "2015-01-01",
            "2022-01-01"),
  end = c("2007-12-31",
          "2014-12-31",
          "2021-12-31",
          "2024-12-31"))

data_sst <- dl_years |>
  split(dl_years$start) |>
  purrr::map_dfr(OISST_sub_dl) |>
  dplyr::rename() |>
  dplyr::select(longitude, latitude, date = t, temperature_C = temp)

usethis::use_data(data_sst, overwrite = TRUE)
