#' Hurricane tracks for Milton (2024)
#'
#' Observed hurricane track (lat, lon, timestamp) for center of storm Milton during 2024
#'
#' @format ## `data_milton`
#' A data frame with 7,240 rows and 60 columns:
#' \describe{
#'   \item{name}{Character - Storm name given by the agency}
#'   \item{iso_time}{POSIXct - SO Time provided in Universal Time Coordinates (UTC). Format is YYYY-MM-DD HH:mm:ss Most points are provided at 6 hour intervals.}
#'   \item{lat}{Numeric - Latitude in decimal degrees}
#'   \item{lon}{Numeric - Longitude in decimal degrees}
#'   \item{wind_speed}{Numeric - Maximum sustained wind speed in knots: 0 - 300 kts. (1-min. mean)}
#'   \item{pressure}{Numeric - Minimum sea level pressure, 850 - 1050 mb.}
#'   \item{sshs}{Numeric - Saffir–Simpson hurricane scale. The values are defined as follows:
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

#' World Health Organization TB data
#'
#' @description
#' A subset of data from the World Health Organization Global Tuberculosis
#' Report, and accompanying global populations. `who` uses the original
#' codes from the World Health Organization. The column names for columns
#' 5 through 60 are made by combining `new_` with:
#'
#' * the method of diagnosis (`rel` = relapse, `sn` = negative pulmonary
#'   smear, `sp` = positive pulmonary smear, `ep` = extrapulmonary),
#' * gender (`f` = female, `m` = male), and
#' * age group (`014` = 0-14 yrs of age, `1524` = 15-24, `2534` = 25-34,
#'   `3544` = 35-44 years of age, `4554` = 45-54, `5564` = 55-64,
#'   `65` = 65 years or older).
#'
#' `who2` is a lightly modified version that makes teaching the basics
#' easier by tweaking the variables to be slightly more consistent and
#' dropping `iso2` and `iso3`. `newrel` is replaced by `new_rel`, and a
#' `_` is added after the gender.
#'
#' @format ## `who`
#' A data frame with 7,240 rows and 60 columns:
#' \describe{
#'   \item{country}{Country name}
#'   \item{iso2, iso3}{2 & 3 letter ISO country codes}
#'   \item{year}{Year}
#'   \item{new_sp_m014 - new_rel_f65}{Counts of new TB cases recorded by group.
#'    Column names encode three variables that describe the group.}
#' }
#' @source <https://www.who.int/teams/global-tuberculosis-programme/data>
"lionfish"

#' Example tabular representations
#'
#' Data sets that demonstrate multiple ways to layout the same tabular data.
#'
#' `table1`, `table2`, `table3`, `table4a`, `table4b`,
#' and `table5` all display the number of TB cases documented by the World
#' Health Organization in Afghanistan, Brazil, and China between 1999 and 2000.
#' The data contains values associated with four variables (country, year,
#' cases, and population), but each table organizes the values in a different
#' layout.
#'
#' The data is a subset of the data contained in the World Health
#' Organization Global Tuberculosis Report
#'
#' @source <https://www.who.int/teams/global-tuberculosis-programme/data>
#' @format NULL
"scuba"

#' Example tabular representations
#'
#' Data sets that demonstrate multiple ways to layout the same tabular data.
#'
#' `table1`, `table2`, `table3`, `table4a`, `table4b`,
#' and `table5` all display the number of TB cases documented by the World
#' Health Organization in Afghanistan, Brazil, and China between 1999 and 2000.
#' The data contains values associated with four variables (country, year,
#' cases, and population), but each table organizes the values in a different
#' layout.
#'
#' The data is a subset of the data contained in the World Health
#' Organization Global Tuberculosis Report
#'
#' @source <https://www.who.int/teams/global-tuberculosis-programme/data>
#' @format NULL
"transects"

#' Example tabular representations
#'
#' Data sets that demonstrate multiple ways to layout the same tabular data.
#'
#' `table1`, `table2`, `table3`, `table4a`, `table4b`,
#' and `table5` all display the number of TB cases documented by the World
#' Health Organization in Afghanistan, Brazil, and China between 1999 and 2000.
#' The data contains values associated with four variables (country, year,
#' cases, and population), but each table organizes the values in a different
#' layout.
#'
#' The data is a subset of the data contained in the World Health
#' Organization Global Tuberculosis Report
#'
#' @source <https://www.who.int/teams/global-tuberculosis-programme/data>
#' @format NULL
"abundance"

#' Example tabular representations
#'
#' Data sets that demonstrate multiple ways to layout the same tabular data.
#'
#' `table1`, `table2`, `table3`, `table4a`, `table4b`,
#' and `table5` all display the number of TB cases documented by the World
#' Health Organization in Afghanistan, Brazil, and China between 1999 and 2000.
#' The data contains values associated with four variables (country, year,
#' cases, and population), but each table organizes the values in a different
#' layout.
#'
#' The data is a subset of the data contained in the World Health
#' Organization Global Tuberculosis Report
#'
#' @source <https://www.who.int/teams/global-tuberculosis-programme/data>
#' @format NULL
"vessel_tracks"

#' Example tabular representations
#'
#' Data sets that demonstrate multiple ways to layout the same tabular data.
#'
#' `table1`, `table2`, `table3`, `table4a`, `table4b`,
#' and `table5` all display the number of TB cases documented by the World
#' Health Organization in Afghanistan, Brazil, and China between 1999 and 2000.
#' The data contains values associated with four variables (country, year,
#' cases, and population), but each table organizes the values in a different
#' layout.
#'
#' The data is a subset of the data contained in the World Health
#' Organization Global Tuberculosis Report
#'
#' @source <https://www.who.int/teams/global-tuberculosis-programme/data>
#' @format NULL
"spillover"
