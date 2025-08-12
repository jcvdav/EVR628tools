## code to prepare `palette_IPCC_temp_seq` dataset goes here

rgb2hex <- function(vals){
  grDevices::rgb(red = vals$R,
                 green = vals$G,
                 blue = vals$B,
                 maxColorValue = 256)
}

colors <- dplyr::tibble(
  name = c("temp_div",
           "temp_seq",
           "prec_div",
           "prec_seq",
           "wind_div",
           "wind_seq",
           "cryo_div",
           "cryo_seq"),
  link = c("https://raw.githubusercontent.com/IPCC-WG1/colormaps/refs/heads/master/continuous_colormaps_rgb_0-255/temp_div.txt",
           "https://raw.githubusercontent.com/IPCC-WG1/colormaps/refs/heads/master/continuous_colormaps_rgb_0-255/temp_seq.txt",
           "https://raw.githubusercontent.com/IPCC-WG1/colormaps/refs/heads/master/continuous_colormaps_rgb_0-255/prec_div.txt",
           "https://raw.githubusercontent.com/IPCC-WG1/colormaps/refs/heads/master/continuous_colormaps_rgb_0-255/prec_seq.txt",
           "https://raw.githubusercontent.com/IPCC-WG1/colormaps/refs/heads/master/continuous_colormaps_rgb_0-255/wind_div.txt",
           "https://raw.githubusercontent.com/IPCC-WG1/colormaps/refs/heads/master/continuous_colormaps_rgb_0-255/wind_seq.txt",
           "https://raw.githubusercontent.com/IPCC-WG1/colormaps/refs/heads/master/continuous_colormaps_rgb_0-255/cryo_div.txt",
           "https://raw.githubusercontent.com/IPCC-WG1/colormaps/refs/heads/master/continuous_colormaps_rgb_0-255/cryo_seq.txt")
) |>
  dplyr::mutate(rgb = purrr::map(link,
                                 readr::read_table,
                                 col_names = c("R", "G", "B")),
                hex = purrr::map(rgb, rgb2hex))


temp_div <- colors$hex[colors$name == "temp_div"][[1]]
temp_seq <- colors$hex[colors$name == "temp_seq"][[1]]
prec_div <- colors$hex[colors$name == "prec_div"][[1]]
prec_seq <- colors$hex[colors$name == "prec_seq"][[1]]
wind_div <- colors$hex[colors$name == "wind_div"][[1]]
wind_seq <- colors$hex[colors$name == "wind_seq"][[1]]
cryo_div <- colors$hex[colors$name == "cryo_div"][[1]]
cryo_seq <- colors$hex[colors$name == "cryo_seq"][[1]]

usethis::use_data(temp_div,
                  temp_seq,
                  prec_div,
                  prec_seq,
                  wind_div,
                  wind_seq,
                  cryo_div,
                  cryo_seq,
                  internal = TRUE, overwrite = TRUE)
