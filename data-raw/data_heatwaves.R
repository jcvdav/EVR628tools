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

# Export
usethis::use_data(data_heatwaves, overwrite = TRUE)
