#' UM Color palette
#'
#' @description
#' A discrete color palette with up to 10 colors based on the Unviersity of Miami's color identity guidelines.
#'
#' @param n An integer. Number of colors to return, from a maximum of 10.
#' @param require_WCAG A boolean specifying whether colors returned should comply with Web Content Accessibility Guidelines (WCAG) 2 Level AA Conformance (See \url{https://www.w3.org/WAI/WCAG2AA-Conformance}). Defaults to FALSE.
#'
#' @returns A string of HEX color values
#' @export
#' @source See the University of Miami's Visual Identity Cues for Web: \url{https://webcomm.miami.edu/resources/identity/color/index.html}
#'
#' @examples
#'
#' library(EVR628tools)
#' # Ask for 5 colors
#' palette_UM(5)
#'
palette_UM <- function(n, require_WCAG = FALSE){

    # UM colors come from: https://webcomm.miami.edu/resources/identity/color/index.html
  colors <- c("#f47321",
              "#005030",
              "#c13832",
              ifelse(!require_WCAG, "#d28e00", "#9E6C00"),
              ifelse(!require_WCAG, "#9eceeb", "#257BB1"),
              ifelse(!require_WCAG, "#8996a0", "#687682"),
              ifelse(!require_WCAG, "#d4bf95", "#91713B"),
              ifelse(!require_WCAG, "#91b9a4", "#528067"),
              ifelse(!require_WCAG, "#fbde81", "#917003"),
              ifelse(!require_WCAG, "#a2ad00", "#727A00"))

  try(if(n > length(colors)) warning(paste0("You asked for", n, "colors, but the UM pallete has 10. I'll return 10 only.")))

  return(colors[1:min(n, length(colors))])
}
