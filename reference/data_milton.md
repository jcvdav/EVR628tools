# Hurricane tracks for Milton (2024)

Observed hurricane track (lat, lon, timestamp) for center of storm
Milton during 2024

## Usage

``` r
data_milton
```

## Format

\## \`data_milton\` A data frame with 62 rows and 7 columns:

- name:

  Character - Storm name given by the agency

- iso_time:

  POSIXct - SO Time provided in Universal Time Coordinates (UTC). Format
  is YYYY-MM-DD HH:mm:ss Most points are provided at 6 hour intervals.

- lat:

  Numeric - Latitude in decimal degrees

- lon:

  Numeric - Longitude in decimal degrees

- wind_speed:

  Numeric - Maximum sustained wind speed in knots: 0 - 300 kts. (1-min.
  mean)

- pressure:

  Numeric - Minimum sea level pressure, 850 - 1050 mb.

- sshs:

  Character - Saffir–Simpson hurricane scale. The values are defined as
  follows:

  -5

  :   Unknown

  -4

  :   Post-tropical

  -3

  :   Miscellaneous disturbances

  -2

  :   Subtropical

  -1

  :   Tropical depression (W\<34)

  0

  :   Tropical storm (34\<W\<64)

  1

  :   Category 1 (64\<=W\<83)

  2

  :   Category 2 (83\<=W\<96)

  3

  :   Category 3 (96\<=W\<113)

  4

  :   Category 4 (113\<=W\<137)

  5

  :   Category 5 (W \>= 137)

## Source

Data come from:
<https://www.ncei.noaa.gov/products/international-best-track-archive>
