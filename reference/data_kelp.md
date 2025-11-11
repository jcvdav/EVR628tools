# Fish counts from Baja California's Kelp forests

A data.frame with 807 rows and 25 columns

- location:

  Character - Three (or four)-letter code used to identify the general
  sampling location

- site:

  Character - Indicates whether the northen or southern end of the kelp
  forest from a location was surveyed

- transect:

  Numeric, transect number

- genus_species:

  Character - Scientific name for the species counted

- TL_5, TL_10, ... TL_105:

  Character - Abundances within each size bin (TL = Total length in cm)

## Usage

``` r
data_kelp
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with 807
rows and 25 columns.

## Details

Transect data in "wide" format, containing size and abundance data for
fish species found in Baja California's Kelp Forests
