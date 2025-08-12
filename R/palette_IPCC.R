#' IPCC color palettes
#' @description
#' Provides standard divergent and sequential IPCC color palettes for temperature, precipitation, wind and cryosphere
#'
#' @param var Character string indicating the type of variable. Options are "temp", "prec", "wind", "cryo"
#' @param type Character string specifying if the user wants divergent ("div") or sqeuential "seq" palettes
#'
#' @returns A character vector containing hex color codes
#' @export
#'
#' @source Page 8 of the 2019 ICPP Style guide: \url{https://www.ipcc.ch/site/assets/uploads/2019/04/IPCC-visual-style-guide.pdf}
#' @source Mark Harrower & Cynthia A. Brewer (2003) ColorBrewer.org: An Online Tool for Selecting Colour Schemes forMaps, The Cartographic Journal, 40:1, 27-37, DOI: 10.1179/000870403235002042
#'

palette_IPCC <- function(var = "temp", type = "div"){

  if(!var %in% c("temp", "prec", "wind", "cryo")) {
    stop('The value of `var` must be one of: "temp", "prec", "wind", or "cryo"')
  }

  if(!type %in% c("div", "seq")) {
    stop('The value of `type` must be one of: "div", or "seq"')
  }

  colors <- dplyr::case_when(var == "temp" & type == "div" ~ EVR628tools:::temp_div,
                             var == "temp" & type == "seq" ~ EVR628tools:::temp_seq,
                             var == "prec" & type == "div" ~ EVR628tools:::prec_div,
                             var == "prec" & type == "seq" ~ EVR628tools:::prec_seq,
                             var == "wind" & type == "div" ~ EVR628tools:::wind_div,
                             var == "wind" & type == "seq" ~ EVR628tools:::wind_seq,
                             var == "cryo" & type == "div" ~ EVR628tools:::cryo_div,
                             var == "cryo" & type == "seq" ~ EVR628tools:::cryo_seq)

  return(colors)
}
