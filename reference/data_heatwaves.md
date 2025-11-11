# Marine Heatwaves in TURF-managed fisheries

Time series (1982-2021) of Marine Heatwaves identified for 55 fisheries
along the Baja California Peninsula.

## Usage

``` r
data_heatwaves
```

## Format

\## \`data_heatwaves\` A data.frame with 220 rows and 8 columns:

- fishery:

  Character - Specifies the fishery (lobster, sea_cucumber, or urchin)

- eu_rnpa:

  Character - A 10-digit unique identifier for each economic unit

- year:

  Numeric - Year in which the marine heatwave occurred

- temp_mean:

  Numeric - Mean sea surface temperature within a TURF (°C)

- mhw_events:

  Numeric - Number of marine heatwave events

- mhw_days:

  Numeric - Total number of days under marine heatwave conditons

- mhw_int_mean:

  Numeric - Mean marine heatwave intensity, defined as degrees in excess
  of the climatological threshold (°C)

- mhw_int_cummulative:

  Numeric - Cumulative marine heatwave intensity, measured in °C days

## Source

Villaseñor-Derbez, J.C., Arafeh-Dalmau, N. & Micheli, F. Past and future
impacts of marine heatwaves on small-scale fisheries in Baja California,
Mexico. Commun Earth Environ 5, 623 (2024).
<https://doi.org/10.1038/s43247-024-01696-x>
