#' Hurricane tracks for Milton (2024)
#'
#' Observed hurricane track (lat, lon, timestamp) for center of storm Milton during 2024
#'
#' @format ## `data_milton`
#' A data frame with 62 rows and 7 columns:
#' \describe{
#'   \item{name}{Character - Storm name given by the agency}
#'   \item{iso_time}{POSIXct - SO Time provided in Universal Time Coordinates (UTC). Format is YYYY-MM-DD HH:mm:ss Most points are provided at 6 hour intervals.}
#'   \item{lat}{Numeric - Latitude in decimal degrees}
#'   \item{lon}{Numeric - Longitude in decimal degrees}
#'   \item{wind_speed}{Numeric - Maximum sustained wind speed in knots: 0 - 300 kts. (1-min. mean)}
#'   \item{pressure}{Numeric - Minimum sea level pressure, 850 - 1050 mb.}
#'   \item{sshs}{Character - Saffir–Simpson hurricane scale. The values are defined as follows:
#'   -5 = Unknown
#'   -4 = Post-tropical
#'   -3 = Miscellaneous disturbances
#'   -2 = Subtropical
#'   Tropical systems classified based on wind speeds
#'   -1 = Tropical depression (W<34)
#'   0 = Tropical storm (34<W<64)
#'   1 = Category 1 (64<=W<83)
#'   2 = Category 2 (83<=W<96)
#'   3 = Category 3 (96<=W<113)
#'   4 = Category 4 (113<=W<137)
#'   5 = Category 5 (W >= 137)
#'   }
#' }
#' @source \url{https://www.ncei.noaa.gov/products/international-best-track-archive}
"data_milton"

#' Lionfish biometry
#'
#' @description
#' Biometric measurements for 109 lionfish (_Pterois volitans_) captured off
#' Puerto Aventuras (Mexico). Data also include spatial and environmental variables.
#'
#'
#' @format ## `data_lionfish`
#' A data frame with 109 rows and 9 columns:
#' \describe{
#'   \item{id}{Character - A unique alpha-numeric code identoifying each organism}
#'   \item{site}{Character - Name of the dive site from which the organism was collected}
#'   \item{lat}{Numeric - Latitude in decimal degrees}
#'   \item{lon}{Numeric - Longitude in decimal degrees}
#'   \item{total_length_mm}{Numeric - Total length of the organism, measured in milimiters}
#'   \item{total_weight_gr}{Numeric - Total weight (also known as wet weight) of the organism, measured in milimiters}
#'   \item{size_class}{Character - Size class specifying whether the fish was small (< 100 mm), medium (100 - 200 mm) or large (> 300 mm)}
#'   \item{depth_m}{Numeric - Depth at which the organism was collected, in meters}
#'   \item{temperature_C}{Numeric - Water temperature during time of collection, in °C}
#' }
#' @source Villaseñor-Derbez, J.C. & Herrera-Pérez, R. Brief description of prey
#' selectivity and ontogenetic changes in the diet of the invasive lionfish
#' _Pterois volitans_ (Actinopterygii, Scorpaenidae) in the Mexican Caribbean.
#' Pan-American Journal of Aquatic Sciences. (2014), 9(2):131-135.
"data_lionfish"

#' Apparent fishing effort in the Gulf of Mexico
#'
#' @description
#' Monthly AIS-derived dishing effort in the Gulf of Mexico during 2024
#'
#'
#' @format ## `data_fishing_effort`
#' A data frame with 14,038 rows and 6 columns:
#' \describe{
#'   \item{year}{Numeric - Year of the observation}
#'   \item{month}{Numeric - Month of the observation}
#'   \item{lat}{Numeric - Latitude in decimal degrees indicating the center of the pixel where activity took place}
#'   \item{lon}{Numeric - Longitude in decimal degrees indicating the center of the pixel where activity took place}
#'   \item{effort_vessels}{Numeric - Fishing effort measured in number of fishing vessels infered to be fishing at that location}
#'   \item{temperature_C}{Numeric - Fishing effort measured in apparent fishing hours at that location}
#' }
#' @source Data were generated using the `gfwr` package
#' \url{https://github.com/GlobalFishingWatch/gfwr}. See also Kroodsma
#' et al. "Tracking the global footprint of fisheries." Science 359.6378 (2018):
#' 904-908.
"data_fishing_effort"

#' Sea Surface Temperature
#'
#' @description
#' Mean daily Sea Surface Temperature (°C) derived from 0.5° resolution imagery
#' within bounding box (lon_min = -81, lon_max = -79.75, lat_min = 25.25,
#' lat_max = 25.75).
#'
#' @format ## `data_sst`
#' A data frame with 2,922 rows and two columns:
#' \describe{
#'    \item{date}{Date - Date of the observation, in yyyy-mm-dd format}
#'    \item{temperature_C}{Numeric - Mean sea surface temperatrure, measured in °C}
#' }
#'
#' @source Raw data come from NOAA AVHRR Optimum Interpolation v2.1 - SST
#' \url{https://coastwatch.pfeg.noaa.gov/erddap/griddap/ncdcOisst21Agg_LonPM180.html}.
#' The script to generate the data is \url{https://github.com/jcvdav/EVR628tools/blob/main/data-raw/data_sst.R}
#' @examples
#' library(EVR628tools)
#' library(ggplot2)
#' # Look at the first 10 rows
#' head(data_sst, 10)
#' # Make a time series plot
#' ggplot(data = EVR628tools::data_sst,
#'        mapping = aes(x = date, y = temperature_C)) +
#'        geom_line()
"data_sst"


#' Sea Surface Temperature Anomaly
#'
#' @description
#' Sea Surface Temperature (°C) derived from 0.5° resolution imagery
#' within bounding box (lon_min = -81, lon_max = -79.75, lat_min = 25.25,
#' lat_max = 25.75) for 2024, relative to 2000-2023 values.
#'
#' @format ## `data_sst_anom`
#' A data.frame with 9 rows and two columns:
#' \describe{
#'   \item{lat}{Numeric - Latitude in decimal degrees indicating the center of the pixel}
#'   \item{lon}{Numeric - Longitude in decimal degrees indicating the center of the pixel}
#'   \item{temperature_anomaly_C}{Numeric - Sea surface temperatrure anomaly relative to daily 2000-2023 values, measured in °C}
#' }
#'
#' @source Raw data come from NOAA AVHRR Optimum Interpolation v2.1 - SST
#' \url{https://coastwatch.pfeg.noaa.gov/erddap/griddap/ncdcOisst21Agg_LonPM180.html}.
#' The script to generate the data is \url{https://github.com/jcvdav/EVR628tools/blob/main/data-raw/data_sst.R}
#' @examples
#' # Look at the first 10 rows
#' head(EVR628tools::data_sst_anom, 10)
"data_sst_anom"

#' Marine Heatwaves in TURF-managed fisheries
#'
#' @description
#' Time series (1982-2021) of Marine Heatwaves identified for 55 fisheries along
#' the Baja  California Peninsula.
#'
#' @format ## `data_heatwaves`
#' A data.frame with 220 rows and 8 columns:
#' \describe{
#'    \item{fishery}{Character - Specifies the fishery (lobster, sea_cucumber, or urchin)}
#'    \item{eu_rnpa}{Character - A 10-digit unique identifier for each economic unit}
#'    \item{year}{Numeric - Year in which the marine heatwave occurred}
#'    \item{temp_mean}{Numeric - Mean sea surface temperature within a TURF (°C)}
#'    \item{mhw_events}{Numeric - Number of marine heatwave events}
#'    \item{mhw_days}{Numeric - Total number of days under marine heatwave conditons}
#'    \item{mhw_int_mean}{Numeric - Mean marine heatwave intensity, defined as degrees in excess of the climatological threshold (°C)}
#'    \item{mhw_int_cummulative}{Numeric - Cumulative marine heatwave intensity, measured in °C days}
#' }
#'
#' @source Villaseñor-Derbez, J.C., Arafeh-Dalmau, N. & Micheli, F. Past and future
#' impacts of marine heatwaves on small-scale fisheries in Baja California, Mexico.
#' Commun Earth Environ 5, 623 (2024). \url{https://doi.org/10.1038/s43247-024-01696-x}
"data_heatwaves"

#' Fisheries production and revenues
#' Information in fisheries production and revenues for 41 economic units
#' targeting 3 species in the Baja California Peninsula during 2021
#'
#' @description
#' A data.frame with 51 rows and 4 columns:
#' \describe{
#'    \item{fishery}{Character - Specifies the fishery (lobster, sea_cucumber, or urchin)}
#'    \item{eu_rnpa}{Character - A 10-digit unique identifier for each economic unit}
#'    \item{catch}{Numeric - Fisherie sproduction, in Metric tons}
#'    \item{revenue}{Numeric - Revenue generated from selling the catch, in thousands of MXN}
#' }
#'
#' @source Data are oroginally reported by CONAPESCA (Mexico's fishery management agency)
#' and made available online at: \url{https://conapesca.gob.mx/wb/cona/avisos_arribo_cosecha_produccion}
#' This clean version comes from Villaseñor-Derbez, J.C., Arafeh-Dalmau, N. & Micheli, F. Past and future
#' impacts of marine heatwaves on small-scale fisheries in Baja California, Mexico.
#' Commun Earth Environ 5, 623 (2024). \url{https://doi.org/10.1038/s43247-024-01696-x}
"data_fishing"

#' SIMULATED biomass inside and outside a Marine Protected Area
#'
#' Panel data with \bold{SIMULATED} biomass data from inside and
#' outside a Marine Protected Area. The average treatment effect is 2, but noise
#' has been introuced to the data.
#'
#' @description
#' A data.frame with 100 rows and 5 columns:
#' \describe{
#'    \item{time}{Numeric - Number of year until / since the the intervention takes place}
#'    \item{id}{Character - Unique site identifier (letters a:j)}
#'    \item{protected}{Numeric - A value of 1, indicates the observation comes from inside the MPA }
#'    \item{after}{Numeric - A value of 1 indicates the observation comes from the period after the intervention took place}
#'    \item{biomass}{Numeric - \bold{SIMULATED} biomass data, in Kg}
#' }
#' @source This data are \bold{SIMULATED}. For instructional purposes only.
"data_MPA"

#' CPUE near and far the Phoenix Islands Protected Area in Kiribati
#'
#' Panel data with CPUE data from near and far from the boundaries of the
#' Phoenix Islands Protected Area.
#'
#' @description
#' A data.frame with 663 rows and 6 columns:
#' \describe{
#'    \item{year}{Numeric - Number of year until / since the the intervention takes place}
#'    \item{lat}{Numeric - Latitude indicating centroid of the grid cell}
#'    \item{lon}{Numeric - Longitude indicating centroid of the grid cell}
#'    \item{period}{Character - indicates whether the observation comes from near (within 100 nautical miles) or far (between 100 and 200 nautical miles) from the MPA }
#'    \item{distance}{Characger - indicates whether the observation comes before or after the intervention took place}
#'    \item{cpue}{Numeric - Catch-per-unit-effort meassured in metric tons per fishing set}
#' }
"data_PIPA"

#' Fish counts from Baja California's Kelp forests
#'
#' Transect data in "wide" format, containing size and abundance data for
#' fish species found in Baja California's Kelp Forests
#'
#' @description
#' A data.frame with 807 rows and 25 columns
#' \describe{
#'    \item{location}{Character - Three (or four)-letter code used to identify the general sampling location}
#'    \item{site}{Character - Indicates whether the northen or southern end of the kelp forest from a location was surveyed}
#'    \item{transect}{Numeric, transect number}
#'    \item{genus_species}{Character - Scientific name for the species counted}
#'    \item{TL_5, TL_10, ... TL_105}{Character - Abundances within each size bin (TL = Total length in cm)}
#'  }
"data_kelp"

#"scuba"

#"transects"

# "vessel tracks"

# "landings" and "ports"
