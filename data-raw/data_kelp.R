################################################################################
# title
################################################################################
#
# Juan Carlos Villaseñor-Derbez
# jc_villasenor@miami.edu
# date
#
# Build a data set of fish numbers counted in kelp forests
#
################################################################################

# BUILD DATA ###################################################################

## Make transect data ----------------------------------------------------------

transect_data_raw <- readr::read_csv("https://github.com/jcvdav/KelpForest/raw/refs/heads/master/raw_data/kelp_forest_fish/Fish2011-2013.csv") |>
  janitor::clean_names()

data_kelp <- transect_data_raw |>
  dplyr::filter(year == max(year),
                level == "Fondo") |>
  tidyr::pivot_wider(names_from = total_length,
                     values_from = abundance,
                     names_prefix = "TL_") |>
  dplyr::mutate(TL_70 = NA,
                site = ifelse(site == "Norte", "North", "South")) |>
  dplyr::select(location, site, transect, genus_species,
                TL_5, TL_10, TL_15, TL_20, TL_25, TL_30,
                TL_35, TL_40, TL_45, TL_50, TL_55, TL_60,
                TL_65, TL_70, TL_75, TL_80, TL_85, TL_90,
                TL_95, TL_100, TL_105) |>
  dplyr::distinct()

# EXPORT #######################################################################
usethis::use_data(data_kelp, overwrite = TRUE)
