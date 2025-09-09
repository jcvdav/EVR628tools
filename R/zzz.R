.onAttach <- function(...) {

  msg <- paste0(cli::col_blue("You have sucessfully loaded the EVR628tools package"))
  rlang::inform(message = msg, class = "packageStartupMessage")

}
