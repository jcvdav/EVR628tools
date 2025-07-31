#' Create standard project directories
#'
#' @description Creates a set of standard directories in the repository: scripts, data (and subdirectories for raw, processed, and output) results (and subdirectories for img and tab)
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
                     "data",
                        "raw",
                        "processed",
                        "output",
                     "results",
                        "results/img",
                        "results/tab")
  sapply(standard_dirs, dir.create)

  if(!is.null(other_dirs)){
    sapply(other_dirs, dir.create)
  }
}
