# Fishing effort by gear type and vessel

AIS-derived dishing effort for vessels in the Gulf of Mexico during 2024

## Usage

``` r
data_geartypes
```

## Format

\## \`data_geartypes\` A data frame with 840 rows and 3 columns:

- vessel_id:

  Character - Unique vessel identifier

- geartype:

  Character - Type of gear

- effort_hours:

  Numeric - Total fishing effort, measured in hours

## Source

Data were generated using the \`gfwr\` package
<https://github.com/GlobalFishingWatch/gfwr>. See also Kroodsma et al.
"Tracking the global footprint of fisheries." Science 359.6378 (2018):
904-908.
