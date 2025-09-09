.onAttach <- function(...) {

  msg <- paste(cli::col_green(cli::symbol$tick),
               cli::col_green(cli::symbol$tick),
               cli::col_green(cli::symbol$tick),
               cli::col_blue("You sucessfully loaded the EVR628tools package"),
               cli::col_green(cli::symbol$tick),
               cli::col_green(cli::symbol$tick),
               cli::col_green(cli::symbol$tick))
  rlang::inform(message = msg, class = "packageStartupMessage")

}
