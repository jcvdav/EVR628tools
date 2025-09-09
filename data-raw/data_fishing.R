################################################################################
#
# Juan Carlos Villaseñor-Derbez
# jc_villasenor@miami.edu
# date
#
# code to prepare `data_fishing` dataset goes here
#
################################################################################

data_fishing <- readRDS(url("https://github.com/jcvdav/ssf_shocks/raw/refs/heads/main/data/processed/annual_fishery_panel.rds")) |>
  dplyr::filter(year == 2021) |>
  dplyr::group_by(eu_rnpa, fishery) |>
  dplyr::summarize(catch_kg = sum(live_weight, na.rm = T),
                   revenue_mxn = sum(value, na.rm = T),
                   .groups = "drop")
# Export
usethis::use_data(data_fishing, overwrite = TRUE)
