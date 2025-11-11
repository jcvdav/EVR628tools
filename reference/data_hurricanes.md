# Hurricane tracks as an sf object

Observed hurricane tracks for 64 storms in the North Atlantic
(2022-2024).

## Usage

``` r
data_hurricanes
```

## Format

\## \`data_hurricanes\` An sf object with 51 rows and 4 columns:

- season:

  Numeric - Indicates the year in which the storm was named

- name:

  Character - Storm name given by the agency

- max_sshs:

  Character - Maximum value attained by the stormed, using the
  Saffir–Simpson hurricane scale. The values are defined as follows:

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

- geometry:

  sfc - A simple feature column containing LINESTRINGS for storm tracks

## Source

Data come from:
<https://www.ncei.noaa.gov/products/international-best-track-archive>
