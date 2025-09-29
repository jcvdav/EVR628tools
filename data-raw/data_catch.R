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
# Data come from https://github.com/jcvdav/ssf_shocks/raw/refs/heads/main/data/processed/annual_fishery_panel.rds

data_catch <- readRDS(url("https://github.com/jcvdav/ssf_shocks/raw/refs/heads/main/data/processed/annual_fishery_panel.rds")) |>
  dplyr::select(eu_rnpa, fishery, year, live_weight)

usethis::use_data(data_catch, overwrite = TRUE)
