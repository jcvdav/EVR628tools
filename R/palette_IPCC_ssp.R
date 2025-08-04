#' Color palette for the Shared Socio-economic Pathways (SSPs)
#' @description
#' Representative Concentration Pathways (RCPs) and Socio-economic Pathways (SSPs), as indicated by the IPCC AR6 WGI style guide
#'
#' @param ssp A character vector specifying which SSPs are required. Options are `"SSP5-8.5"`, `"SSP3-7.0"`, `"SSP2-4.5"`, `"SSP1-2.6"` and `"SSP1-1.9"`
#'
#' @source Page 9 form the IPCC style gyide: \url{https://www.ipcc.ch/site/assets/uploads/2022/09/IPCC_AR6_WGI_VisualStyleGuide_2022.pdf}
#' @returns A NAMED vector containing pairs for SSP names and colors.
#' @export
#'
#' @examples
#' palette_IPCC_ssp(ssp = "SSP5-8.5")
#
palette_IPCC_ssp <- function(ssp = c("SSP5-8.5",
                                     "SSP3-7.0",
                                     "SSP2-4.5",
                                     "SSP1-2.6",
                                     "SSP1-1.9")){
  # IPCC reports colores in RGB, so I conver them to HEX using the code below
  # rgb <- dplyr::tribble(~"SSP", ~"R", ~"G", ~"B",
  #                       "SSP5-8.5", 149, 27, 30,
  #                       "SSP3-7.0", 231, 29, 37,
  #                       "SSP2-4.5", 247, 148, 32,
  #                       "SSP1-2.6", 23, 60, 102,
  #                       "SSP1-1.9", 0, 173, 207) |>
  #   dplyr::mutate(hex = grDevices::rgb(red = R,
  #                                      green = G,
  #                                      blue = B,
  #                                      maxColorValue = 256))

  ssp_palette <- c("SSP5-8.5" = "#941B1E",
                   "SSP3-7.0" = "#E61D25",
                   "SSP2-4.5" = "#F69320",
                   "SSP1-2.6" = "#173C66",
                   "SSP1-1.9" = "#00ACCE")

  ssp_palette[ssp]
}











