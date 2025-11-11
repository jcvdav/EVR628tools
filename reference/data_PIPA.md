# CPUE near and far the Phoenix Islands Protected Area in Kiribati

A data.frame with 663 rows and 6 columns:

- year:

  Numeric - Number of year until / since the the intervention takes
  place

- lat:

  Numeric - Latitude indicating centroid of the grid cell

- lon:

  Numeric - Longitude indicating centroid of the grid cell

- period:

  Character - indicates whether the observation comes from near (within
  100 nautical miles) or far (between 100 and 200 nautical miles) from
  the MPA

- distance:

  Characger - indicates whether the observation comes before or after
  the intervention took place

- cpue:

  Numeric - Catch-per-unit-effort meassured in metric tons per fishing
  set

## Usage

``` r
data_PIPA
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 663
rows and 6 columns.

## Details

Panel data with CPUE data from near and far from the boundaries of the
Phoenix Islands Protected Area.
