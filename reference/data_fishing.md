# Fisheries production and revenues Information in fisheries production and revenues for 41 economic units targeting 3 species in the Baja California Peninsula between 2000 and 2021

A data.frame with 1051 rows and 5 columns:

- eu_rnpa:

  Character - A 10-digit unique identifier for each economic unit

- year:

  Numeric - The year of the fishing seson

- fishery:

  Character - Specifies the fishery (lobster, sea_cucumber, or urchin)

- catch:

  Numeric - Fisherie sproduction, in Metric tons

- revenue:

  Numeric - Revenue generated from selling the catch, in thousands of
  MXN

## Usage

``` r
data_fishing
```

## Format

An object of class `tbl_df` (inherits from `tbl`, `data.frame`) with
1051 rows and 5 columns.

## Source

Data are originally reported by CONAPESCA (Mexico's fishery management
agency) and made available online at:
<https://conapesca.gob.mx/wb/cona/avisos_arribo_cosecha_produccion> This
clean version comes from Villaseñor-Derbez, J.C., Arafeh-Dalmau, N. &
Micheli, F. Past and future impacts of marine heatwaves on small-scale
fisheries in Baja California, Mexico. Commun Earth Environ 5, 623
(2024). <https://doi.org/10.1038/s43247-024-01696-x>
