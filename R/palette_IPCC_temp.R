#' IPCC color palette for Sea Surface Temperature
#'#' @description
#' Default colors for Sea Surface Temperature, as indicated by the IPCC AR6 WGI style guide, when using a divergent color palette
#'
#'
#' @returns A character vector containing 11 colors,
#' @export
#'
#' @source Page 8 of the 2019 ICPP Style guide: \url{https://www.ipcc.ch/site/assets/uploads/2019/04/IPCC-visual-style-guide.pdf}
#' @source Mark Harrower & Cynthia A. Brewer (2003) ColorBrewer.org: An Online Tool for Selecting Colour Schemes forMaps, The Cartographic Journal, 40:1, 27-37, DOI: 10.1179/000870403235002042
#'
#' @examples
#' library(EVR628tools)
#' palette_IPCC_temp()

palette_IPCC_temp <- function(){

    ipcc_temp <- dplyr::tribble(~"R", ~"G", ~"B",
                                103, 0, 31,
                                178, 24, 43,
                                214, 96, 77,
                                244, 165, 130,
                                253, 219, 199,
                                247, 247, 247,
                                209, 229, 240,
                                146, 197, 222,
                                67, 147, 195,
                                33, 102, 172,
                                5, 48, 97)

    ipcc_temp <- grDevices::rgb(red = ipcc_temp$R,
                                green = ipcc_temp$G,
                                blue = ipcc_temp$B,
                                maxColorValue = 256)
    return(ipcc_temp)
}
