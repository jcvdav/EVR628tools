################################################################################
# title
################################################################################
#
# Juan Carlos Villaseñor-Derbez
# jc_villasenor@miami.edu
# August 6, 2025
#
# code to prepare `data_lionfish` dataset goes here
#
################################################################################

# Data come from Alisha's repository at https://github.com/jcvdav/LionfishHabitat
# Read, select columns
data_lionfish <- readr::read_csv("https://raw.githubusercontent.com/jcvdav/LionfishHabitat/refs/heads/master/data/lionfishdata.csv") |>
  dplyr::select(id,
                site = location,
                lat = latitude,
                lon = longitude,
                total_length_mm = total_length,
                total_weight_gr = total_weight,
                depth_m = depth,
                temperature_C = temperature)

# Export
usethis::use_data(data_lionfish, overwrite = TRUE)
