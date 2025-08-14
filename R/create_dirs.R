#' Create standard project directories
#'
#' @description Creates a set of standard directories in the repository: scripts, data, results and the main subdirectories
#'
#' @param other_dirs If needed, a character vector containing the names for extra directories.
#'
#' @source Borrowed from my old startR package at \url{https://github.com/emlab-ucsb/startR/blob/master/R/create_local_dirs.R}
#'
#' @export
#'
#' @examples
#'
#' \dontrun{
#' create_dirs() # This creates default directories
#'
#' create_dirs(other_dirs = "docs") # Creates all default directories and a "docs" directory
#' }
#'
create_dirs <- function(other_dirs = NULL){

  standard_dirs <- c("scripts",
                        "scripts/01_processing",
                        "scripts/02_analysis",
                        "scripts/03_content",
                     "data",
                        "data/raw",
                        "data/processed",
                        "data/output",
                     "results",
                        "results/img",
                        "results/tab")

  sapply(standard_dirs, dir.create)

  if(!is.null(other_dirs)){
    sapply(other_dirs, dir.create)
  }
}
