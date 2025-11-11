# IPCC color palette for SSPs

Default colors for Shared Socio-economic Pathways (SSPs), as indicated
by the IPCC AR6 WGI style guide

## Usage

``` r
palette_IPCC_ssp(
  ssp = c("SSP5-8.5", "SSP3-7.0", "SSP2-4.5", "SSP1-2.6", "SSP1-1.9")
)
```

## Source

Page 9 form the IPCC style guide:
<https://www.ipcc.ch/site/assets/uploads/2022/09/IPCC_AR6_WGI_VisualStyleGuide_2022.pdf>

## Arguments

- ssp:

  A character vector specifying which SSPs are required. Options are
  \`"SSP5-8.5"\`, \`"SSP3-7.0"\`, \`"SSP2-4.5"\`, \`"SSP1-2.6"\` and
  \`"SSP1-1.9"\`

## Value

A NAMED vector containing pairs for SSP names and colors.

## Examples

``` r
palette_IPCC_ssp(ssp = "SSP5-8.5")
#>  SSP5-8.5 
#> "#941B1E" 
```
