# UM Color palette

A discrete color palette with up to 10 colors based on the Unviersity of
Miami's color identity guidelines.

## Usage

``` r
palette_UM(n, require_WCAG = FALSE)
```

## Source

See the University of Miami's Visual Identity Cues for Web:
<https://webcomm.miami.edu/resources/identity/color/index.html>

## Arguments

- n:

  An integer. Number of colors to return, from a maximum of 10.

- require_WCAG:

  A boolean specifying whether colors returned should comply with Web
  Content Accessibility Guidelines (WCAG) 2 Level AA Conformance (See
  <https://www.w3.org/WAI/WCAG2AA-Conformance>). Defaults to FALSE.

## Value

A string of HEX color values

## Examples

``` r
library(EVR628tools)
# Ask for 5 colors
palette_UM(5)
#> [1] "#f47321" "#005030" "#c13832" "#d28e00" "#9eceeb"
```
