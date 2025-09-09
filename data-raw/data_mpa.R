################################################################################
#
# Juan Carlos Villaseñor-Derbez
# jc_villasenor@miami.edu
# date
#
# code to prepare `data_MPA` and `data_PIPA` datasets goes here
#
################################################################################

# Build a SIMULATED data set of MPA, where biomass increases by 2 units
set.seed(1)
data_MPA <- tidyr::expand_grid(time = -5:4,
                               id = 1:10) |>
  dplyr::mutate(protected = 1 * (id <= 5),
                b = 10 + rnorm(id),
                after = 1 * (time >= 0),
                biomass = b + (after * protected) * 2,
                id = letters[id]) |>
  dplyr::select(time, id, protected, after, biomass)

# Now use data from the LSMPA paper
mpa <- readRDS(url("https://github.com/jcvdav/LSMPA_spillover/raw/refs/heads/main/data/processed/annual_relevant_mpa_gears_estimation_panel.rds"))
data_PIPA <- mpa |>
  dplyr::filter(gear == "purse_seine",
                name == "Phoenix Islands Protected Area",
                dplyr::between(event, -5, 4)) |>
  dplyr::group_by(lat, lon, year, post, near_100, event) |>
  dplyr::summarize(effort = sum(effort),
                   tot_mt = sum(tot_mt),
                   .groups = "drop") |>
  dplyr::mutate(post = post == 1,
                near = near_100 == 1,
                cpue = tot_mt / effort,
                id = paste(lat, lon)) |>
  dplyr::select(year, lat, lon, near, post, cpue)

# Export both objects
usethis::use_data(data_MPA, overwrite = TRUE)
usethis::use_data(data_PIPA, overwrite = TRUE)

