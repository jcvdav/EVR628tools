# IPCC color palettes

Provides standard divergent and sequential IPCC color palettes for
temperature, precipitation, wind and cryosphere

## Usage

``` r
palette_IPCC(var = "temp", type = "div")
```

## Source

Page 8 of the 2019 ICPP Style guide:
<https://www.ipcc.ch/site/assets/uploads/2019/04/IPCC-visual-style-guide.pdf>

Mark Harrower & Cynthia A. Brewer (2003) ColorBrewer.org: An Online Tool
for Selecting Colour Schemes forMaps, The Cartographic Journal, 40:1,
27-37, DOI: 10.1179/000870403235002042

## Arguments

- var:

  Character string indicating the type of variable. Options are "temp",
  "prec", "wind", "cryo"

- type:

  Character string specifying if the user wants divergent ("div") or
  sqeuential "seq" palettes

## Value

A character vector containing hex color codes
