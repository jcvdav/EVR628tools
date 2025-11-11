# Apparent fishing effort in the Gulf of Mexico

Monthly AIS-derived dishing effort in the Gulf of Mexico during 2024

## Usage

``` r
data_fishing_effort
```

## Format

\## \`data_fishing_effort\` A data frame with 14,038 rows and 6 columns:

- year:

  Numeric - Year of the observation

- month:

  Numeric - Month of the observation

- lat:

  Numeric - Latitude in decimal degrees indicating the center of the
  pixel where activity took place

- lon:

  Numeric - Longitude in decimal degrees indicating the center of the
  pixel where activity took place

- effort_vessels:

  Numeric - Fishing effort measured in number of fishing vessels infered
  to be fishing at that location

- temperature_C:

  Numeric - Fishing effort measured in apparent fishing hours at that
  location

## Source

Data were generated using the \`gfwr\` package
<https://github.com/GlobalFishingWatch/gfwr>. See also Kroodsma et al.
"Tracking the global footprint of fisheries." Science 359.6378 (2018):
904-908.
