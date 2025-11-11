# Sea Surface Temperature Anomaly

Sea Surface Temperature (°C) derived from 0.5° resolution imagery within
bounding box (lon_min = -81, lon_max = -79.75, lat_min = 25.25, lat_max
= 25.75) for 2024, relative to 2000-2023 values.

## Usage

``` r
data_sst_anom
```

## Format

\## \`data_sst_anom\` A data.frame with 9 rows and two columns:

- lat:

  Numeric - Latitude in decimal degrees indicating the center of the
  pixel

- lon:

  Numeric - Longitude in decimal degrees indicating the center of the
  pixel

- temperature_anomaly_C:

  Numeric - Sea surface temperatrure anomaly relative to daily 2000-2023
  values, measured in °C

## Source

Raw data come from NOAA AVHRR Optimum Interpolation v2.1 - SST
<https://coastwatch.pfeg.noaa.gov/erddap/griddap/ncdcOisst21Agg_LonPM180.html>.
The script to generate the data is
<https://github.com/jcvdav/EVR628tools/blob/main/data-raw/data_sst.R>

## Examples

``` r
# Look at the first 10 rows
head(EVR628tools::data_sst_anom, 10)
#> # A tibble: 9 × 3
#>         lat       lon temperature_anomaly_C
#>   <dbl[1d]> <dbl[1d]>                 <dbl>
#> 1      25.4     -80.1                 0.260
#> 2      25.4     -79.9                 0.484
#> 3      25.4     -79.6                 0.636
#> 4      25.6     -80.1                 0.202
#> 5      25.6     -79.9                 0.479
#> 6      25.6     -79.6                 0.637
#> 7      25.9     -80.1                 0.238
#> 8      25.9     -79.9                 0.493
#> 9      25.9     -79.6                 0.646
```
