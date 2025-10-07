################################################################################
#
# Juan Carlos Villaseñor-Derbez
# jc_villasenor@miami.edu
# date
#
# code to prepare `data_heatwaves` dataset goes here
#
################################################################################
#
# Data come from https://github.com/jcvdav/ssf_shocks/raw/refs/heads/main/data/processed/annual_environmental_panel.rds

data_heatwaves <- readRDS(url("https://github.com/jcvdav/ssf_shocks/raw/refs/heads/main/data/processed/annual_environmental_panel.rds")) |>
  dplyr::select(eu_rnpa, fishery, year, temp_mean, mhw_events, mhw_days, mhw_int_mean, mhw_int_cumulative)


mhw <- readr::read_rds("https://github.com/jcvdav/ssf_shocks/raw/refs/heads/main/data/processed/mhw_by_turf.rds") |>
  dplyr::filter(eu_rnpa == "0203000278")

data_mhw_ts <- mhw$ts[[1]] |>
  dplyr::filter(dplyr::between(t, lubridate::ymd("2012-01-01"), lubridate::ymd("2015-12-01"))) |>
  dplyr::select(date = t, temp, seas, thresh)

data_mhw_events <- mhw$mhw[[1]]$event |>
  dplyr::select(date_peak, contains("intensity")) |>
  dplyr::select(-contains(c("Thresh", "abs", "var")))


# Export
usethis::use_data(data_heatwaves, overwrite = TRUE)
usethis::use_data(data_mhw_ts, overwrite = TRUE)
usethis::use_data(data_mhw_events, overwrite = TRUE)
