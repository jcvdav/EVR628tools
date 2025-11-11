# SIMULATED biomass inside and outside a Marine Protected Area

A data.frame with 100 rows and 5 columns:

- time:

  Numeric - Number of year until / since the the intervention takes
  place

- id:

  Character - Unique site identifier (letters a:j)

- protected:

  Numeric - A value of 1, indicates the observation comes from inside
  the MPA

- after:

  Numeric - A value of 1 indicates the observation comes from the period
  after the intervention took place

- biomass:

  Numeric - **SIMULATED** biomass data, in Kg

## Usage

``` r
data_MPA
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 100
rows and 5 columns.

## Source

This data are **SIMULATED**. For instructional purposes only.

## Details

Panel data with **SIMULATED** biomass data from inside and outside a
Marine Protected Area. The average treatment effect is 2, but noise has
been introuced to the data.
